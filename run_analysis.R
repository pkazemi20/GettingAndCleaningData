#set working directory 
"~/iprocom/coursera/gettig and cleaning/GettingAndCleaningData/UCI HAR Dataset"->dir
setwd(dir)

# Reading data file
features = read.table('features.txt',header=FALSE,sep="")
xTrain= read.table("./train/X_train.txt",header=FALSE)
xTest= read.table("./test/X_test.txt",header=FALSE)
yTrain= read.table("./train/y_train.txt",header=FALSE)
yTest= read.table("./test/y_test.txt",header=FALSE)
activity= read.table('./activity_labels.txt',header=FALSE)
subjectTest = read.table('./test/subject_test.txt',header=FALSE)
subjectTrain = read.table('./train/subject_train.txt',header=FALSE)

# load variable names
features[,2]->name

# name the columns of the data
name->names(xTrain)
name->names(xTest)

# Merge Test and Train files by rows
rbind(xTest,xTrain) ->xm
rbind(yTest,yTrain)->ym
subject <- rbind(subjectTrain, subjectTest)


# Extracts only the measurements on the mean and standard deviation for each measurement
grep("-mean\\(\\)", name, value=TRUE)->mea
grep("-std\\(\\)", name, value=TRUE)->std
c(mea, std)->new
xm[,new]->ms

# name the columns of the data
"activity_id"->colnames(ym) 
"subject"->colnames(subject)

# Merge ytest and ytrain
c("activity_id", "activity")->colnames(activity)
merge(ym, activity)->ymm

# Rename y column 
cbind(xm, ymm[,2])->data_new
"activity"->colnames(data_new)[colnames(data_new) == "ymm[, 2]"] 

## joining subject to dataset
cbind(data_new, subject)->tidy2

# Aggregate by activity and subject
aggregate(. ~ subject + activity, data=tidy2, FUN = mean)->tidy3

## write results
write.table(tidy3, file="./tidy.txt", sep="\t", row.names=FALSE)
