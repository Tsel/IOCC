#
# powerlaw Example from Gillespi Newcastle
# http://arxiv.org/pdf/1407.3492v1.pdf
#
data("moby")
pl_m <- displ$new(moby)
pl_m$getXmin()
pl_m$getPars()
pl_m$setPars(2)
estimate_pars(pl_m)
plot(pl_m)
lines(pl_m, col=2)
