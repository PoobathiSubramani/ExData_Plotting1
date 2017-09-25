wd <- "/Users/boopathi/Datascience/R/assignments/assignment5/" #set the working directory
setwd(wd)
inputfile <- "./household_power_consumption.txt"
hpc <- read.table(dataFile, header=T, sep=";", stringsAsFactors=F, dec=".")
hpc.subset <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007"),] #Prepare the subset of data


datetime <- strptime(paste(hpc.subset$Date, hpc.subset$Time, sep=" "), "%d/%m/%Y %H:%M:%S")  #create datetime 
globalActivePower <- as.numeric(hpc.subset$Global_active_power) #convert factor into numeric
png("./plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()


