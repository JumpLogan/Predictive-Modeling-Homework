Tele = read.table("Tele.txt",header=T)
attach(Tele)

Model1 = lm(calls~months)
summary(Model1)

plot(months,Model1$res,pch=19,cex=1.5,xlab="months",ylab="Std. Res")


months2 = months^2
Model2 = lm(calls~months+months2)
summary(Model2)


plot(months,Model2$res,pch=19,cex=1.5,xlab="months",ylab="Std. Res")

plot(months,calls,pch=19,cex=1.5,col=4)
lines(months,Model2$fitted,lwd=2,col=3)
lines(months,Model1$fitted,lwd=2,col=2)