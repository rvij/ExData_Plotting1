# Build time series
plot(data$DateTime, 
     data$Sub_metering_1, 
     pch=NA, 
     xlab="", 
     ylab="Energy sub metering")
lines(data$DateTime, data$Sub_metering_1)
lines(data$DateTime, data$Sub_metering_2, col="red")
lines(data$DateTime, data$Sub_metering_3, col="blue")
legend('topright', c("Sub_metering_1", "Sub_metering_1", "Sub_metering_3"), 
       col=c("black", "red", "blue"), lty=1)

dev.copy(png, file = "Plot3.png")
dev.off()