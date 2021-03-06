#1
pricedata <- read.csv("/Users/samdevries/Downloads/week-4-price-data.csv", header=T, sep=",")
makedata <-  read.csv("/Users/samdevries/Downloads/week-4-make-model-data.csv", header=T, sep=",")
MMP <- merge(pricedata, makedata, by = "ModelNumber")
# MMP has 27 observations. It is one less than the total
# number of observations, because it leaves out the typo
# of "23120"

#2
MMP2 <- merge(pricedata, makedata, by = "ModelNumber", all = TRUE)

#3
MMP3 <- subset(MMP2, Year==2010)

#4
MMP4 <- subset(MMP2, Color=="Red" & Price > 10000, select = ModelNumber:Year)

#5
MMP5 <- subset(MMP4, select = -c(ModelNumber, Color))

#6
charnum <- function(x) {
  print(nchar(x))
}