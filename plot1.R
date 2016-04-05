powerData <- read.csv("household_power_consumption.txt", header = T, sep = ';', 
                      na.strings = "?", nrows = 2075259, check.names = F, 
                      stringsAsFactors = F, comment.char = "", quote = '\"')
powerData$Date <- as.Date(powerData$Date, format = "%d/%m/%Y")

# creating a subset of the data
powerData <- subset(powerData, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

# creating Plot 1
png("plot1.png", width = 480, height = 480)
hist(powerData$Global_active_power, col = "red", main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)")
dev.off()

