# Rscript for Exploratory Data Analysis
# Reading data file
setwd("/Users/rajeevvij/Downloads")
require(data.table)

household_consump <- fread("household_power_consumption.txt", header=T, sep=";",verbose=T, na.strings = c("NA","?"))
tables()
names(household_consump)
str(household_consump)

summary(household_consump)
household_consump

household_consump[, Date := as.Date(Date,"%d/%m/%Y")]
household_consump[, Global_active_power := as.numeric(Global_active_power)]
household_consump[, Global_reactive_power := as.numeric(Global_reactive_power)]
household_consump[, Voltage := as.numeric(Voltage)]
household_consump[, Global_intensity := as.numeric(Global_intensity)]

household_consump_ex1 <- household_consump[Date >= "2007-02-01" & Date <= "2007-02-02",]


hist(household_consump_ex1$Global_active_power, col="red", main="Global Active Power", 
     xlab="Global Active Power (killowatt)", ylab="Frequency", freq=TRUE)
dev.copy(png, file = "Plot1.png")
dev.off()


