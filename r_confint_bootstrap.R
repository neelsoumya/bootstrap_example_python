# Method to generate confidence interval in R

d <- data.frame(w=rnorm(100),
                x=rnorm(100), 
                y=sample(LETTERS[1:2], 100, replace=TRUE),
                z=sample(LETTERS[3:4], 100, replace=TRUE) )

# do GLM on this new data frame
fm2  <- glm(y ~ w + x + z, data=d, family=binomial)

confint(object = fm2, method = 'boot')
