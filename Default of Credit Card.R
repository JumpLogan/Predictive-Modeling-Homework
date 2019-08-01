###################################################
## Fit a regression tree to default.payment.next.month~PAY_0 in the data.
## The tree is plotted as well as a plot of the corresponding step function
## fit to the data.
###################################################
library(tree)

Creditcard = read.csv('UCI_Credit_Card.csv', header=TRUE)
summary(Creditcard)

#first get a big tree using a small value of mindev
temp = tree(default.payment.next.month~PAY_0,data=Creditcard,mindev=.0001)
cat('first big tree size: \n')
print(length(unique(temp$where)))


