power <- read.table(file = "household_power_consumption.txt", sep = ";", encoding = "UTF-8", header = TRUE)

subpwr <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

hist(as.numeric(as.character(subpwr$Global_active_power)),col="red",main="Global Active Power",xlab="Global Active Power(kilowatts)")

dev.copy(png,"plot1.png")
dev.off()

