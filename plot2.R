power <- read.table(file = "household_power_consumption.txt", sep = ";", encoding = "UTF-8", header = TRUE)

subpwr <- subset(power,power$Date=="1/2/2007" | power$Date =="2/2/2007")

plot(as.numeric(subpwr$Global_active_power),main="Global Active Power",type="l", ylab="Global Active Power(kilowatts)",xlab="",axes=FALSE)
axis(1, at = c(0,1500,2900),labels = c("Thu","Fri","Sat"))
axis(2,at=c(0,2,4,6))
box(lty = 1, col = 'black')

dev.copy(png,"plot2.png")
dev.off()

