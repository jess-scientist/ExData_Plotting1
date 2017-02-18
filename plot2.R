pwr <- read.table("household_power_consumption.txt",sep=";",nrows=2880,skip=66637,
                  col.names=c("Date","Time","Global_active_power","Global_reactive_power",
                              "Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3"))

dt <- paste(pwr$Date,pwr$Time)
datetime=strptime(dt,format="%d/%m/%Y %H:%M:%S")

png("plot2.png",width=480,height=480)
plot(datetime,pwr$Global_active_power,type="n",xlab=NA,ylab="Global Active Power (kilowatts)")
lines(datetime,pwr$Global_active_power)
dev.off()
