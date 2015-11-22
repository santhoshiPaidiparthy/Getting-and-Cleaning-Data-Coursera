#### Getting and Cleaning Data - Course Project
  This repo has the Getting and Cleaning Data project.
  
###Project Description

 The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. 

###Files 
  run_analysis.R -> Script for performing the analysis
  
  CodeBook.md    -> Code book that describes the variables, the data, and any transformations or work that you performed to clean up the data.  
  
###How to do the analysis using the provided script

  1. Download the .zip file and extract the data into your working directory from the following link:
  https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
  
  2. The script assumes that the extracted data is in "UCI HAR Dataset" folder in your working directory.
  3. Place the script in the working directory and run/source the script in the RStudio.
  4. The script does the following data transformations:
     4.1 Merges the training and the test sets to create one data set.
     4.2 Extracts only the measurements on the mean and standard deviation for each measurement. 
     4.3 Uses descriptive activity names to name the activities in the data set
     4.4 Appropriately labels the data set with descriptive variable names. 
     4.5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
	 
  5. A text file tidy_data.txt will be created in the working directory.
  
###Additional Information

  Detailed comments are included in the script , which helps in understanding how the data transformations are done.
 