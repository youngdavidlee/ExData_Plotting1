#Exploratory data plotting - Week 1 Young Lee
#1st plot

data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, na.strings = "?")
data$DateTime <- paste(data$Date, data$Time)
data$DateTime <- as.Date(data$DateTime, format = "%d/%m/%Y %H:%M:%S")

library(dplyr)
data_subset <- filter(data, DateTime >= as.Date("2007-02-01 00:00:00"), DateTime < as.Date("2007-02-03 00:00:00"))
head(data_subset)
tail(data_subset)
str(data_subset)
dim(data_subset)
names(data_subset)
hist(data_subset$Global_active_power, col = "red")
dev.off()
