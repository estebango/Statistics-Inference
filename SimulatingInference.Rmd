---
title: "SimulationInference"
author: "Esteban Gomez"
date: "Sunday, November 23, 2014"
output: html_document
---
#Statistical Inference Course Project:

The exponential distribution can be simulated in R with rexp(n, lambda) where lambda is the rate parameter. The mean of exponential distribution is 1/lambda and the standard deviation is also also 1/lambda. Set lambda = 0.2 for all of the simulations. In this simulation, it is investigated the distribution of averages of 40 exponential(0.2)s. Note that it is needed to do a thousand or so simulated averages of 40 exponentials.

#Show where the distribution is centered at and compare it to the theoretical center of the distribution.

```{r}
set.seed(3)
sim <- 1000
size <- 40
lambda<-0.2
sim <- matrix(rexp(sim*size, rate=lambda), sim, size)
means <- rowMeans(sim)

hist(means, breaks=50, prob=TRUE,
     main="Exponential distribution with lambda=0.2, 1000 simulations",
     xlab="")
lines(density(means))
abline(v=1/lambda, col="red")
```

As we can see in the previous diagram the theoretical center is 5 (red line).

#Show how variable it is and compare it to the theoretical variance of the distribution.

The variance of the distribution is 0.689.Theorical variance is 5, the variance of the means obtained is much smaller than the theorical variance.

#Show that the distribution is approximately normal
```{r}
qqnorm(means)
qqline(means)
```
