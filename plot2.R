powerData <- read.csv("household_power_consumption.txt", header = T, sep = ';', 
                      na.strings = "?", nrows = 2075259, check.names = F, 
                      stringsAsFactors = F, comment.char = "", quote = '\"')
powerData$Date <- as.Date(powerData$Date, format = "%d/%m/%Y")

# creating a subset of the data
powerData <- subset(powerData, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

# converting dates
datetime <- paste(as.Date(powerData$Date), powerData$Time)
powerData$Datetime <- as.POSIXct(datetime)

# creating plot 2
png("plot2.png", width = 480, height = 480)
plot(powerData$Global_active_power ~ powerData$Datetime, type = "l",
     ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()

