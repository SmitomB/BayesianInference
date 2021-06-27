# Title: Normal Modeling - A chapter from Bayesian Essential with R
# Author: Smitom Borah
# Date: 06/27/2021

# Background ----
## This script contains some of the codes that were required to learn the concepts
## of Bayesian modeling. 

# Packages ----
library(bayess)

# Initial visualization ----
data(normaldata)
shift = normaldata[,2]
hist(shift,nclass = 10, col = "steelblue", prob = TRUE, main = "")

# qqplot
## For details on qqnorm and qqplot,
## visit: https://data.library.virginia.edu/understanding-q-q-plots/
qqnorm((shift - mean(shift))/sd(shift), pch = 19, col = "gold2")
abline(a = 0, b = 1, lty = 2, col = 'indianred', lwd = 2)

# A simple example of Bayesian inference
## length of the vector
n <- length(shift)
## mean value of the distribution
mmu <- sum(shift)/(n+1); mmu
## std dev of the distribution assuming the prior distribution 
## has std dev 0.75
vmu <- 0.75^2/(n+1); vmu
