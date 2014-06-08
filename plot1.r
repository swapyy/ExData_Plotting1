hpc = read.csv(file="household_power_consumption.txt",head=TRUE,sep=";")
hpc07 <- hpc[(hpc$Date == "1/2/2007") | (hpc$Date == "2/2/2007"),]
write.csv(hpc07,file="hpc07.txt",row.names=FALSE)
hpc07$Global_active_power=as.numeric(as.character(hpc07$Global_active_power))
hist(hpc07$Global_active_power,col="red",plot=TRUE, xlab="Global active power (kilowatts)", ylab="Frequency",main="Global Active Power")
dev.copy(png,file="plot1.png",width=480,height=480)
dev.off()
