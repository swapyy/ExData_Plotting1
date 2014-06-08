hpc = read.csv(file="household_power_consumption.txt",head=TRUE,sep=";")
hpc07 <- hpc[(hpc$Date == "1/2/2007") | (hpc$Date == "2/2/2007"),]
write.csv(hpc07,file="hpc07.txt",row.names=FALSE)
plot(hpc07$DateTime, hpc07$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(hpc07$DateTime, hpc07$Sub_metering_2, type="l", col="red")
lines(hpc07$DateTime, hpc07$Sub_metering_3, type="l", col="blue")
legend("topright", lty=1, lwd=1, col=c("black","blue","red"), legend=labels)
dev.copy(png,file="plot3.png",width=480,height=480)
dev.off()