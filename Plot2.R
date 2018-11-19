setwd('C:/Users/rxs755/Desktop/DS/ED-1/exdata')

datasource <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F,
                       stringsAsFactors=F, comment.char="", quote='\"')
dataset_1 <- subset(datasource, Date %in% c("1/2/2007","2/2/2007"))
dataset_1$Date <- as.Date(dataset_1$Date, format="%d/%m/%Y")
hist(dataset_1$Global_active_power, main="Global Active Power",
     xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()