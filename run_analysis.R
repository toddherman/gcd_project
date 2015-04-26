library(dplyr)
# load common data
activity <-  read.table("activity_labels.txt")
features <-  read.table("features.txt") 

# load and munge test data
x_test <-  read.table("test/X_test.txt") 
colnames(x_test) <- features$V2  # add variable names to the columns

#x_test[,"data_set"] <- "TEST" #designate this as being from the TEST data

subject_test <-  read.table("test/subject_test.txt") # add subject information
x_test[,"subject"]     <- subject_test

y_test <-  read.table("test/y_test.txt") #add activity label keyed off ID
y_test_activity <- merge(activity, y_test)
x_test[,"activity"] <- y_test_activity$V2
test_selected = select(x_test, subject, activity, contains("mean"),contains("std") )

# load and munge training data
x_train <-  read.table("train/X_train.txt") 
colnames(x_train) <- features$V2  # add variable names to the columns

#x_train[,"data_set"] <- "TRAIN" #designate this as being from the train data

subject_train <-  read.table("train/subject_train.txt") # add subject information
x_train[,"subject"]     <- subject_train

y_train <-  read.table("train/y_train.txt") #add activity label keyed off ID
y_train_activity <- merge(activity, y_train)
x_train[,"activity"] <- y_train_activity$V2
train_selected = select(x_train, subject, activity, contains("mean"),contains("std") )

merged_test_train <- rbind(test_selected, train_selected)

#  z <- filter(merged_test_train, subject == "20") #for testing

grouped <- merged_test_train %>% 
    group_by(subject, activity) %>% 
    summarise_each(funs(mean))


write.table(grouped, "merged_test_train_grouped_mean.txt", row.names=FALSE) 

#1 Merge the training and the test sets to create one data set.
#2 Extracts only the measurements on the mean and standard deviation for each measurement. 
#3 Uses descriptive activity names to name the activities in the data set
#4 Appropriately labels the data set with descriptive variable names. 
#5 From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.