edu<-read.csv("Family_members_dist1.csv",header=T)
SC<-read.csv("SC_priority_list_dist1.csv",header=T)
ST<-read.csv("ST_priority_list_dist1.csv",header=T)
names(SC)[1]<- "HH_ID"
names(ST)[1]<- "HH_ID"
SC.new <- cbind(SC[1],SC[21])
ST.new <- cbind(ST[1],ST[21])
caste<- rbind(SC.new,ST.new)
a <- subset(edu,GENDER=="F"& EDUCATION_ID!="NULL")
edu.new <- cbind(a[,c(1,2,6,9,10,11)])
#edu.new <- cbind( subset(edu,GENDER=="F"& EDUCATION_ID!="NULL")$edu[2],subset(edu,GENDER=="F"& EDUCATION_ID!="NULL")$edu[9])
caste<-as.data.frame(caste)
#edu<-as.data.frame(edu)
join(caste,edu,type="full",match="all")
fem<-join(caste,edu.new,by="HH_ID",type="full",match="all")
dim(fem)
dim(caste)
dim(edu)
fem[1]
fem[1,1]
fem<-join(edu,caste,type="full",match="all")
dim(fem)
savehistory("caste")
