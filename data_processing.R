getwd()
install.packages("data.table")
library("data.table")
setwd("C:/Users/15790/Desktop/fyp/data")
data <- fread(input = "tranall2011_19.csv", stringsAsFactors = T)


setwd("C:/Users/15790/Desktop/fyp/data/18")

data2<-data[which(data$year=="2018")]
nrow(data2)

memory.limit()
memory.limit(10000000)
write.csv(data2,file="18.csv",quote=T,row.names = T)

dataa <- fread(input = "181.csv", stringsAsFactors = T)
nrow(dataa)
dataa1<-dataa[which(dataa$numberrooms=="1")]
nrow(dataa1)
dataa2<-dataa[which(dataa$numberrooms=="2")]
nrow(dataa2)
dataa3<-dataa[which(dataa$numberrooms=="3")]
nrow(dataa3)
dataa4<-dataa[which(dataa$numberrooms=="4")]
nrow(dataa4)
dataa5<-dataa[which(dataa$numberrooms=="5")]
nrow(dataa5)
dataa6<-dataa[which(dataa$numberrooms=="6to10")]
nrow(dataa6)

dataa11<-dataa1%>%
  group_by(msoa11)%>%
  summarise(low=quantile(price,probs=0.25),mid=quantile(price,probs=0.5),high=quantile(price,probs=0.75))
write.csv(dataa11,file="2018room1.csv",quote=T,row.names = T)
nrow(dataa11)

dataa12<-dataa2%>%
  group_by(msoa11)%>%
  summarise(low=quantile(price,probs=0.25),mid=quantile(price,probs=0.5),high=quantile(price,probs=0.75))
write.csv(dataa12,file="2018room2.csv",quote=T,row.names = T)
nrow(dataa12)

dataa13<-dataa3%>%
  group_by(msoa11)%>%
  summarise(low=quantile(price,probs=0.25),mid=quantile(price,probs=0.5),high=quantile(price,probs=0.75))
write.csv(dataa13,file="2018room3.csv",quote=T,row.names = T)
nrow(dataa13)

dataa14<-dataa4%>%
  group_by(msoa11)%>%
  summarise(low=quantile(price,probs=0.25),mid=quantile(price,probs=0.5),high=quantile(price,probs=0.75))
write.csv(dataa14,file="2018room4.csv",quote=T,row.names = T)
nrow(dataa14)

dataa15<-dataa5%>%
  group_by(msoa11)%>%
  summarise(low=quantile(price,probs=0.25),mid=quantile(price,probs=0.5),high=quantile(price,probs=0.75))
write.csv(dataa15,file="2018room5.csv",quote=T,row.names = T)
nrow(dataa15)

dataa16<-dataa6%>%
  group_by(msoa11)%>%
  summarise(low=quantile(price,probs=0.25),mid=quantile(price,probs=0.5),high=quantile(price,probs=0.75))
write.csv(dataa16,file="2018room6to10.csv",quote=T,row.names = T)
nrow(dataa16)
