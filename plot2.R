png("exdata-data-household_power_consumption/plot2.png")
data<-read.table("exdata-data-household_power_consumption/household_power_consumption.txt",sep=";",header=TRUE,colClasses="character")
data_<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
time<-strptime(paste(data_$Date,data_$Time),"%d/%m/%Y %H:%M:%S")
Sys.setlocale("LC_TIME","English")
plot(time,data_$Global_active_power,xlab="",ylab="Global Active Power (kilowatts)",type="l")
dev.off()