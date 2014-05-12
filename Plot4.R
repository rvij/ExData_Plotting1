par(mfrow = c(2, 2))
plot(data$DateTime, 
     data$Global_active_power, 
     pch=NA, 
     xlab="", 
     ylab="Global Active Power (kilowatts)")
lines(data$DateTime, data$Global_active_power)

plot(data$DateTime, 
     data$Sub_metering_1, 
     pch=NA, 
     xlab="", 
     ylab="Energy sub metering")
lines(data$DateTime, data$Sub_metering_1)
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend('topright', c("Sub_metering_1", "Sub_metering_1", "Sub_metering_3"), 
       col=c("black", "red", "blue"), lty=1, cex=.50)


plot(data$DateTime, 
     data$Global_reactive_power, 
     pch=NA, 
     xlab="", 
     ylab="Global Reactive Power (kilowatts)")
lines(data$DateTime, data$Global_reactive_power)

plot(data$DateTime, 
     data$Voltage, 
     pch=NA, 
     xlab="", 
     ylab="Voltage")
lines(data$DateTime, data$Voltage)

dev.copy(png, file = "Plot4.png")
dev.off()
