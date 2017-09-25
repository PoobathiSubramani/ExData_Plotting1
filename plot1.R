wd <- "/Users/boopathi/Datascience/R/assignments/assignment5/" #set the working directory
setwd(wd)
inputfile <- "./household_power_consumption.txt"
hpc <- read.table(dataFile, header=T, sep=";", stringsAsFactors=F, dec=".")
hpc.subset <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007"),] #Prepare the subset of data

globalActivePower <- as.numeric(hpc.subset$Global_active_power) #convert factor into numeric
png("./plot1.png", width=480, height=480)
hist(globalActivePower, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
dev.off()