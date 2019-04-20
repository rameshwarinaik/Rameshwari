install.packages("caret")
install.packages("glmnet")

library(caret)
library(glmnet)
library(ISLR)

set.seed(123) 

tc = trainControl(method = "cv", number = 10,verboseIter = T)

A = data.frame(Hitters)

A1 = na.omit(A)
model3=train(Salary ~ AtBat + Hits + League ,method = "glmnet",data = A1, trControl = tc,tuneGrid = expand.grid(alpha = 0,lambda = seq(0,1,length=20)))

model3$bestTune

model3$results
varImp(model1)

