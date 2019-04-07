# t-test

?t.test
t.test(1:10, y = c(7:20))

t.test(x = iris[iris$Species == "setosa",]$Sepal.Length, 
       y = iris[iris$Species == "versicolor",]$Sepal.Length)

iris2 <- iris[iris$Species != "virginica",]
summary(iris2)
t.test(Sepal.Length ~ Species, data = iris2)

# anova

anova(aov(Sepal.Length ~ Species, data = iris))

# ols

summary(lm(Sepal.Length ~ Species, data = iris))

# glm

summary(glm(Species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data = iris2))
summary(glm(as.numeric(Species) ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data = iris2))

iris2$species <- 0
iris2[iris2$Species == "versicolor",]$species <- 1
summary(glm(species ~ Sepal.Length + Sepal.Width + Petal.Length + Petal.Width, data = iris2))