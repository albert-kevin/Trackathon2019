install.packages("tidyr")
library("tidyr")

install.packages("qdap")
library("qdap")


# Read the data:
data1 = read.csv("data/dataset/Raw_punctuality_201901.csv",sep=",",header = TRUE)
data2 = read.csv("data/dataset/Raw_punctuality_201902.csv",sep=",",header = TRUE)
data3 = read.csv("data/dataset/Raw_punctuality_201903.csv",sep=",",header = TRUE)
data4 = read.csv("data/dataset/Raw_punctuality_201904.csv",sep=",",header = TRUE)
data <- data.frame(rbind(data1,data2,data3,data4))

# Inspect the data:
# Show the first lines
head(data)
# Show the fields
names(data)

origin <- strsplit(as.character(data$RELATION_DIRECTION),'->')
# Show the number of targets

colsplit2df(data,,c("OriginX","Destination"),"->")
separate(data,data$OriginX,into=c("LineName","Origin"),sep="->")
#destination <- strsplit(as.character(data$RELATION_DIRECTION),'->')
#origin <- strsplit(test[[1]],':') <- strsplit(test[[1]],':')
