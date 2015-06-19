library(ggplot2)
#library(poweRlaw)
#
# create empirical cumulative distribution function for reporting
# delay of the years 2006 until 2009

#
data <- read.csv("./data/Delay2006TO2009.csv",
                 header=TRUE,
                 sep=',')
str(data)
#delay <- subset(data,subset = data$Delay>0)
delay <- data
delay6 <- subset(delay,subset = delay$Jahr == "2006")
delay7 <- subset(delay,subset = delay$Jahr == "2007")
delay8 <- subset(delay,subset = delay$Jahr == "2008")
delay9 <- subset(delay,subset = delay$Jahr == "2009")
delay67 <- subset(delay, subset = delay$Jahr < "2008")
summary(delay$Delay)

#
# fit powerLaw to Delay
#pl_al <- displ$new(delay$Delay)
#pl_6  <- displ$new(delay6$Delay)
#pl_7  <- displ$new(delay7$Delay)
#pl_8  <- displ$new(delay8$Delay)
#pl_9  <- displ$new(delay9$Delay)
#pl_al$setPars(2)
#pl_6$setPars(2)

#pl_m$setPars(2)
#plot(pl_al,ylim(0.0,1.0))
#plot(pl_6,ylim(0.0,1.0))
#plot(pl_7,ylim(0.0,1.0))
#plot(pl_8,ylim(0.0,1.0))
#plot(pl_9,ylim(0.0,1.0))

#abline(v=365)
#abline(v=365*2)
#abline(v=365*3)
#abline(v=365*4)

gg9 <- ggplot(delay, aes(Delay, color=as.factor(Jahr)))
gg9+stat_ecdf() + scale_x_log10() +ylab("cumulative empirical distribution")  #+ scale_x_log10() + xlim(0,100)

gg67 <- ggplot(delay67, aes(Delay, color=as.factor(Jahr)))
gg67 + stat_ecdf() + scale_x_log10()
#
# Keine Funtionsanpassung
estimate_pars(pl_m)
lines(pl_m, col=2)
