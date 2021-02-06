install.packages("rpart.plot") 
library("rpart") # load libraries
library("rpart.plot") 
play_decision = read.csv("C:/Users/Aniket/Desktop/BI/4/PlayTennis.csv")
print(play_decision)
summary(play_decision)
fit = rpart(Play.Tennis ~ Outlook+ Temperature +Humidity+ Wind,
             method="class" ,data=play_decision,
control=rpart.control(minsplit=1),
parms=list(split='information'))
summary(fit)
rpart.plot(fit, type=4, extra=1)



