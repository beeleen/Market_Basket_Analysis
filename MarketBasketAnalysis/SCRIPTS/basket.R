pacman::p_load(ggplot2, dplyr, party, caret, corrplot, tidyr,arules, RColorBrewer )

library(arules)

#Upload and read the dataset
tr <- read.transactions("~/Documents/@/UBIQUM/DATAML/Week7/Market_Basket_Analysis/MarketBasketAnalysis/DATASETS/ElectronidexTransactions.csv", format = 'basket', sep=',', header = F)




#Convert dataset as 
trObj<-as(tr,"transactions")
tr

#Summary of the data
length (tr) # Number of transactions.
tr
summary(tr)

#Visualize the data
itemFrequencyPlot(tr)
image(tr[1:500])
image(sample(tr, 2000))

#  duplicated(tr)  #are there duplicateds?




items(tr)

inspect(tr[1:5])
itemFrequencyPlot(tr,  topN = 20)

itemFrequencyPlot(tr,topN=20,type="absolute",col=brewer.pal(8,'Pastel2'), main="Absolute Item Frequency Plot")