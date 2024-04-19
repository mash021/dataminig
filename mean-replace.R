#load Data Frame
df<-read.csv(choose.files())
#show na
sum(is.na(df))

data2<-df
data2
#define na data
which(is.na(df$n_hos_beds))

#replace with mean
df$n_hos_beds[is.na(df$n_hos_beds)]<-mean(df$n_hos_beds,na.rm = TRUE)
summary(df$n_hos_beds)

#check NA
which(is.na(df$n_hos_beds))
