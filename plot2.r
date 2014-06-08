hpc = read.csv(file="household_power_consumption.txt",head=TRUE,sep=";")
hpc07 <- hpc[(hpc$Date == "1/2/2007") | (hpc$Date == "2/2/2007"),]
write.csv(hpc07,file="hpc07.txt",row.names=FALSE)
plot(hpc07$DateTime, hpc07$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.copy(png,file="plot2.png",width=480,height=480)
dev.off()