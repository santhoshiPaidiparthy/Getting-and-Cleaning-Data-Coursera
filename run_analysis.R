#Project     : Coursera - Geeting and Cleaning data
#Date        : 11/22/2015
#Description :

#The below data set is used for this project
#https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

#1. Merges the training and the test sets to create one data set.
#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
#3. Uses descriptive activity names to name the activities in the data set
#4. Appropriately labels the data set with descriptive variable names. 
#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

#The data that needs to be merged is in the below files:
 #UCI HAR Dataset/activity_labels.txt
 #UCI HAR Dataset/features.txt
 #UCI HAR Dataset/train/subject_train.txt
 #UCI HAR Dataset/train/X_train.txt
 #UCI HAR Dataset/train/Y_train.txt
 #UCI HAR Dataset/test/subject_test
 #UCI HAR Dataset/test/X_test.txt
 #UCI HAR Dataset/test/Y_test.txt

library(plyr)

#Read the downloaded files

activity     <- read.table('./UCI HAR Dataset/activity_labels.txt',header=FALSE)
features     <- read.table('./UCI HAR Dataset/features.txt',header=FALSE)

#Training Data
subjectTrain <- read.table('./UCI HAR Dataset/train/subject_train.txt',header=FALSE)
xTrain       <- read.table('./UCI HAR Dataset/train/x_train.txt',header=FALSE)
yTrain       <- read.table('./UCI HAR Dataset/train/y_train.txt',header=FALSE) 

#Testing Data
subjectTest <- read.table('./UCI HAR Dataset/test/subject_test.txt',header=FALSE)
xTest       <- read.table('./UCI HAR Dataset/test/x_test.txt',header=FALSE)
yTest       <- read.table('./UCI HAR Dataset/test/y_test.txt',header=FALSE)

###################################Analysis#####################################################
#Look at the number of rows in each data frame

nrow(activity)      #shows 6
nrow(features)      #shows 561
nrow(subjectTrain)  #shows 7352
nrow(xTrain)        #shows 7352
nrow(yTrain)        #shows 7352
nrow(subjectTest)   #shows 2947
nrow(xTest)         #shows 2947
nrow(yTest)         #shows 2947

# Look at the number of columns in xTrain and xTest data frames
ncol(xTrain)        #shows 561 . i.e A column for each feature
ncol(xTest)         #shows 561 . i.e A column for each feature

##################################Part 1###################################################

#1.Merge the Training and Testing data sets to create one data set
  #Step 1: Merge the Training data from  subjectTrain, xTrain and yTrain
       #Assign column names to the data
       colnames(subjectTrain)  <- "subjectId"
       colnames(xTrain)        <- features[,2] 
       colnames(yTrain)        <- "activity"
       #Then bind the data
       BindedTrainingData <- cbind(yTrain,subjectTrain,xTrain)
  
  #Step 2: Merge the Testing data from  subjectTest, xTest and yTest
       #Assign column names to the data
       colnames(subjectTest)  <- "subjectId"
       colnames(xTest)        <- features[,2] 
       colnames(yTest)        <- "activity"
       #Then bind the data
       BindedTestingData <- cbind(yTest,subjectTest,xTest)
  
  #Stpe 3: Merge Training and Testing data 
       
       BindedfinalData <- rbind(BindedTrainingData,BindedTestingData)
######################################Analysis##########################################################
#Look at the final data
    names(BindedfinalData)# shows 563 features
    nrow(BindedfinalData) # shows 10299(7352+2947)
    ncol(BindedfinalData) # shows 563 (subjectId + activityId + 561 features )
    head(BindedfinalData)
    tail(BindedfinalData)
    
       
###########################################Part 2#####################################################
#2. Extracts only the measurements on the mean and standard deviation for each measurement. 
     
    #Get only columns with mean and std in their names. Keep subjectId and activity. 
    mean_and_std_features <- grep("((-(mean|std)\\(\\))|(subjectId)|(activity))", names(BindedfinalData)) 
    BindedfinalDataMS <- BindedfinalData[,mean_and_std_features]

############################################Analysis##################################################    
    ncol(BindedfinalDataMS)  # shows 68 columns
    names(BindedfinalDataMS) # shows subjectId and activity along with the mean and standard deviation measurements.
    
###############################################Part 3#########################################
#3 Uses descriptive activity names to name the activities in the data set
    
    # Get the corresponding activity lable from the activity data and replace the activityId with these lables
    BindedfinalDataMS[,1] <- activity[BindedfinalDataMS[,1],2]
    
##############################################Analysis#########################################    
    names(BindedfinalDataMS)
    head(BindedfinalDataMS) # shows the activity lable instead of activityId in first column
    
##############################################Part 4############################################
#4 Appropriately labels the data set with descriptive variable names.  
    
  
      NewNames <- gsub("\\()","",names(BindedfinalDataMS)) 
      NewNames <- gsub("-std","StandardDev",NewNames)
      NewNames <- gsub("-mean","Mean",NewNames)
      NewNames <- gsub("JerkMag","JerkMagnitude",NewNames)
      NewNames <- gsub("GyroMag","GyroMagnitude",NewNames)
      NewNames <- gsub("AccMag","AccMagnitude",NewNames)
      names(BindedfinalDataMS) <- NewNames
      
#############################################Analysis##########################################
      names(BindedfinalDataMS) #shows the modified variable names

#############################################Part 5############################################
#5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.      


      averages <- ddply(BindedfinalDataMS, .(subjectId, activity), function(x) colMeans(x[, 3:68]))

      write.table(averages, "tidy_data.txt",  sep="\t", row.name=FALSE)
    
    
    
    
 







  





