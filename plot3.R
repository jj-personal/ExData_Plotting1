## Exploratory Data Analysis
## Project 1

## Read in data and extract rows between 1/2/2007 and 2/2/2007
setwd("C:/doc/Coursera/04_explore/")
epc_data <- read.table("./household_power_consumption.txt", sep = ";", header = T, stringsAsFactors = F)
data_extact <- subset(epc_data, (Date == "1/2/2007") | (Date == "2/2/2007"))

## Replace "?" with NA
data_extact[data_extact == "?"] <- NA

## Make plot 3
sub_metering_1 <- as.numeric(data_extact$Sub_metering_1)
sub_metering_2 <- as.numeric(data_extact$Sub_metering_2)
sub_metering_3 <- as.numeric(data_extact$Sub_metering_3)

png(file = "plot3.png", width = 480, height = 480)
plot(sub_metering_1, type = "n", xaxt = "n", ylab = "Engery sub metering")
axis(1, at=c(1,1440,2880), labels = c("Thu", "Fri", "Sat"))
lines(sub_metering_1)
lines(sub_metering_2, col="red")
lines(sub_metering_3, col="blue")

legend("topright", col = c("black", "red", "blue"), 
       c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty = c(1,1,1) )

dev.off()





