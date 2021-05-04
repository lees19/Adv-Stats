X1 <- runif(100)

X2 <- .5*X1 + rnorm(100)/100

plot(X2~X1)
cor(X1, X2)

Y <- 3*X1 + 2*X2 + rnorm(100)

m1 <- lm(Y~X1)
summary(m1)

m2 <- lm(Y~X2)
summary(m2)

m3 <- lm(Y~X1+X2)
summary(m3)

m4 <- lm(X1~X2)
summary(m4)

plot(m1$residuals~m1$fitted.values)

plot(m1$residuals)