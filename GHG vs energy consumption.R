library(Benchmarking)
library(psych)
library(ggplot2)
dataset <- read.csv("/Users/shayan/Documents/DEA_GHG/Energy consumption and GHG emissions.csv", header=TRUE)
dataset
summary(dataset)
x <-dataset$energy_consumption_p.e
y <-dataset$GHG_emission_p.e
x
y
dea(x,y,RTS="vrs", ORIENTATION = "in")
dearesults <- dea(x,y,RTS="vrs", ORIENTATION = "in")
dearesults
dea.plot(x,y, RTS = "vrs", ORIENTATION= "in-out")
dea.plot.frontier(x,y,txt=data$Year)
dea.plot.frontier(x,y,txt=data$Year,data$Country,xlab="MWh/capita", ylab="CO2/capita")



