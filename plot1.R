png("exdata-data-household_power_consumption/plot1.png")
data<-read.table("exdata-data-household_power_consumption/household_power_consumption.txt",sep=";",header=TRUE,colClasses="character")
data_<-data[data$Date=="1/2/2007"|data$Date=="2/2/2007",]
hist(as.numeric(data_$Global_active_power),main="Global Active Power",xlab="Global Active Power (kilowatts)",col="red")
dev.off()