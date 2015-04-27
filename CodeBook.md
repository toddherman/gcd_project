Code Book

Variables
	subject - this is number identifying the subject
	activity - the activity numbers have been converted to the descriptive activity names
	
	Each of the following variables is the average for each activity and each subject
	tBodyAcc-mean()-X
	tBodyAcc-mean()-Y
	tBodyAcc-mean()-Z
	tGravityAcc-mean()-X
	tGravityAcc-mean()-Y
	tGravityAcc-mean()-Z
	tBodyAccJerk-mean()-X
	tBodyAccJerk-mean()-Y
	tBodyAccJerk-mean()-Z
	tBodyGyro-mean()-X
	tBodyGyro-mean()-Y
	tBodyGyro-mean()-Z
	tBodyGyroJerk-mean()-X
	tBodyGyroJerk-mean()-Y
	tBodyGyroJerk-mean()-Z
	tBodyAccMag-mean()
	tGravityAccMag-mean()
	tBodyAccJerkMag-mean()
	tBodyGyroMag-mean()
	tBodyGyroJerkMag-mean()
	fBodyAcc-mean()-X
	fBodyAcc-mean()-Y
	fBodyAcc-mean()-Z
	fBodyAcc-meanFreq()-X
	fBodyAcc-meanFreq()-Y
	fBodyAcc-meanFreq()-Z
	fBodyAccJerk-mean()-X
	fBodyAccJerk-mean()-Y
	fBodyAccJerk-mean()-Z
	fBodyAccJerk-meanFreq()-X
	fBodyAccJerk-meanFreq()-Y
	fBodyAccJerk-meanFreq()-Z
	fBodyGyro-mean()-X
	fBodyGyro-mean()-Y
	fBodyGyro-mean()-Z
	fBodyGyro-meanFreq()-X
	fBodyGyro-meanFreq()-Y
	fBodyGyro-meanFreq()-Z
	fBodyAccMag-mean()
	fBodyAccMag-meanFreq()
	fBodyBodyAccJerkMag-mean()
	fBodyBodyAccJerkMag-meanFreq()
	fBodyBodyGyroMag-mean()
	fBodyBodyGyroMag-meanFreq()
	fBodyBodyGyroJerkMag-mean()
	fBodyBodyGyroJerkMag-meanFreq()
	angle(tBodyAccMean,gravity)
	angle(tBodyAccJerkMean),gravityMean)
	angle(tBodyGyroMean,gravityMean)
	angle(tBodyGyroJerkMean,gravityMean)
	angle(X,gravityMean)
	angle(Y,gravityMean)
	angle(Z,gravityMean)
	tBodyAcc-std()-X
	tBodyAcc-std()-Y
	tBodyAcc-std()-Z
	tGravityAcc-std()-X
	tGravityAcc-std()-Y
	tGravityAcc-std()-Z
	tBodyAccJerk-std()-X
	tBodyAccJerk-std()-Y
	tBodyAccJerk-std()-Z
	tBodyGyro-std()-X
	tBodyGyro-std()-Y
	tBodyGyro-std()-Z
	tBodyGyroJerk-std()-X
	tBodyGyroJerk-std()-Y
	tBodyGyroJerk-std()-Z
	tBodyAccMag-std()
	tGravityAccMag-std()
	tBodyAccJerkMag-std()
	tBodyGyroMag-std()
	tBodyGyroJerkMag-std()
	fBodyAcc-std()-X
	fBodyAcc-std()-Y
	fBodyAcc-std()-Z
	fBodyAccJerk-std()-X
	fBodyAccJerk-std()-Y
	fBodyAccJerk-std()-Z
	fBodyGyro-std()-X
	fBodyGyro-std()-Y
	fBodyGyro-std()-Z
	fBodyAccMag-std()
	fBodyBodyAccJerkMag-std()
	fBodyBodyGyroMag-std()
	fBodyBodyGyroJerkMag-std()"

==========
Data

The data set can be download here
Source and more information: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

Transformations performed to clean up the data
Training and test sets are merged to create one data set.
Number of variables (columns) are reduced.  Only the measurements on the mean and standard deviation are used. 
Descriptive activity names from actvity_labels.txt replace activity ID in original data set.
Descriptive variable names added as above. 
A second, independent tidy data set called merged_test_train_grouped_mean.txt is created.  It groups all records by subject then activity and calculates the mean of each.