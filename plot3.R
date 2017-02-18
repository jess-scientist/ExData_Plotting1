pwr <- read.table("household_power_consumption.txt",sep=";",nrows=2880,skip=66637,
                  col.names=c("Date","Time","Global_active_power","Global_reactive_power",
                              "Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dt <- paste(pwr$Date,pwr$Time)
datetime=strptime(dt,format="%d/%m/%Y %H:%M:%S")

png("plot3.png",width=480,height=480)
plot(datetime,pwr$Sub_metering_1,type="n",xlab=NA,ylab="Energy sub metering")
lines(datetime,pwr$Sub_metering_1,col="black")
lines(datetime,pwr$Sub_metering_2,col="red")
lines(datetime,pwr$Sub_metering_3,col="blue")
legend("topright",col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty=1)
dev.off()