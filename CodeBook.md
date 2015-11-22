####Project Description

  The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.
  
####Collection of the raw data
  The data for the project is downloaded from here:
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  
####Creating the tidy datafile

  1. The script does the following data transformations to create a tidy datafile:
     1.1 Merges the training and the test sets to create one data set.
     1.2 Extracts only the measurements on the mean and standard deviation for each measurement. 
     1.3 Uses descriptive activity names to name the activities in the data set
     1.4 Appropriately labels the data set with descriptive variable names. 
     1.5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

####Description of the variables in the tiny_data.txt file

###Summary of the data

 The data set contains the average of the mean and standard deviation for each measurement grouped by each activity and each subject.
 There are 68 variables in the data set. 
 Number of rows in the data set are 180.
 
 ##Variables:
  
  #activity (#1) 
   
   Description    -> activity name  
   Class          -> factor
   Unique values  -> WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
   
  
  #subjectId (#2)
    
	Description   -> ID for the volunteer who participated in the experiment
	Class         -> Integer
	Values        -> 1-30
  #feature measurements (#3-68)
  tBodyAccMean-X
  tBodyAccMean-Y                       
  tBodyAccMean-Z                       
  tBodyAccStandardDev-X                
  tBodyAccStandardDev-Y
  tBodyAccStandardDev-Z                
  tGravityAccMean-X
  tGravityAccMean-Y                    
  tGravityAccMean-Z
  tGravityAccStandardDev-X            
  tGravityAccStandardDev-Y
  tGravityAccStandardDev-Z            
  tBodyAccJerkMean-X
  tBodyAccJerkMean-Y                   
  tBodyAccJerkMean-Z
  tBodyAccJerkStandardDev-X            
  tBodyAccJerkStandardDev-Y
  tBodyAccJerkStandardDev-Z            
  tBodyGyroMean-X                      
  tBodyGyroMean-Y                     
  tBodyGyroMean-Z                      
  tBodyGyroStandardDev-X              
  tBodyGyroStandardDev-Y              
  tBodyGyroStandardDev-Z               
  tBodyGyroJerkMean-X
  tBodyGyroJerkMean-Y                  
  tBodyGyroJerkMean-Z
  tBodyGyroJerkStandardDev-X
  tBodyGyroJerkStandardDev-Y
  tBodyGyroJerkStandardDev-Z
  tBodyAccMagnitudeMean
  tBodyAccMagnitudeStandardDev        
  tGravityAccMagnitudeMean
  tGravityAccMagnitudeStandardDev      
  tBodyAccJerkMagnitudeMean
  tBodyAccJerkMagnitudeStandardDev     
  tBodyGyroMagnitudeMean
  tBodyGyroMagnitudeStandardDev        
  tBodyGyroJerkMagnitudeMean            
  tBodyGyroJerkMagnitudeStandardDev    
  fBodyAccMean-X                      
  fBodyAccMean-Y                       
  fBodyAccMean-Z 
  fBodyAccStandardDev-X                
  fBodyAccStandardDev-Y 
  fBodyAccStandardDev-Z                
  fBodyAccJerkMean-X 
  fBodyAccJerkMean-Y                   
  fBodyAccJerkMean-Z  
  fBodyAccJerkStandardDev-X           
  fBodyAccJerkStandardDev-Y 
  fBodyAccJerkStandardDev-Z            
  fBodyGyroMean-X 
  fBodyGyroMean-Y                      
  fBodyGyroMean-Z
  fBodyGyroStandardDev-X               
  fBodyGyroStandardDev-Y  
  fBodyGyroStandardDev-Z               
  fBodyAccMagnitudeMean 
  fBodyAccMagnitudeStandardDev        
  fBodyBodyAccJerkMagnitudeMean
  fBodyBodyAccJerkMagnitudeStandardDev
  fBodyBodyGyroMagnitudeMean   
  fBodyBodyGyroMagnitudeStandardDev    
  fBodyBodyGyroJerkMagnitudeMean  
  fBodyBodyGyroJerkMagnitudeStandardDev
  
  
 