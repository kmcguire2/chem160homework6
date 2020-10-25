secher <- read.table("secher.txt",header=T) #read the data, has a header

#Birth Weight vs Biparietal Diameter
model1 <- lm(bwt~bpd, data = secher) #is birth weight related to biarietal parameter
sum.model1 <- summary(model1)
model1.R2 <- sum.model1$r.squared #save the R-squared stat from the output
model1.f <- sum.model1$fstatistic #save the f stat from the output
model1.p.value<-pf(model1.f[1],model1.f[2],model1.f[3],lower.tail=F)

png("bwt_bpd.png") #create a png file
plot(bwt~bpd, data = secher) #plot a graph
abline(model1) #add a best fit line
dev.off() #close off the image file

cat("Birth Weight vs Biparietal Diameter \n")
cat("R-squared:", model1.R2, "\n")
cat("p-value:", model1.p.value, "\n")
cat("R-squared:", model1.R2, "\n")

#Birth Weight vs Abdominal Diameter
model2 <- lm(bwt~ad, data = secher) #is birth weight related to abdominal diameter
sum.model2 <- summary(model2)
model2.R2 <- sum.model2$r.squared #save the R-squared stat from the output
model2.f <- sum.model2$fstatistic #save the f stat from the output
model2.p.value<-pf(model2.f[1],model2.f[2],model2.f[3],lower.tail=F)

png("bwt_ad.png") #create a png file
plot(bwt~ad, data = secher) #plot a graph
abline(model2) #add a best fit line
dev.off() #close off the image file

cat("Birth Weight vs Abdominal Diameter \n")
cat("R-squared:", model2.R2, "\n")
cat("p-value:", model2.p.value, "\n")
cat("R-squared:", model2.R2, "\n")

#Birth Weight vs Biparietal Diameter + Abdominal Diameter
model3 <- lm(bwt~bpd+ad, data = secher) #is birth weight related to abdominal diameter
sum.model3 <- summary(model3)
model3.R2 <- sum.model3$r.squared #save the R-squared stat from the output

cat("Birth Weight vs Biparietal Diameter + Abdominal Diameter \n")
cat("R-squared:", model3.R2, "\n")