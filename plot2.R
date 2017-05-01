## Exploratory Data Analysis
## Project 1

## Read in data and extract rows between 1/2/2007 and 2/2/2007
setwd("C:/doc/Coursera/04_explore/")
epc_data <- read.table("./household_power_consumption.txt", sep = ";", header = T, stringsAsFactors = F)
data_extact <- subset(epc_data, (Date == "1/2/2007") | (Date == "2/2/2007"))

## Replace "?" with NA
data_extact[data_extact == "?"] <- NA

## Make plot 2
grp <- as.numeric(data_extact$Global_active_power)
png(file = "plot2.png", width = 480, height = 480)
plot(grp, type = "n", xaxt = "n", ylab = "Global Active Power (kilowatts)")
lines(grp)
axis(1, at=c(1,1440,2880), labels = c("Thu", "Fri", "Sat"))
dev.off()





