
NH11 <- readRDS("C:/Users/Danya/Documents/Foundations in Data Science/Logistic Regression/logistic_regression/logistic_regression/dataSets/NatHealth2011.rds")
labs <- attributes(NH11)$labels

summary(labs)

NH11$everwrk <- factor(NH11$everwrk, levels = c("2 No", "1 Yes"))

NH11$r_maritl <- factor(NH11$r_maritl, levels = c("1 Married - spouse in household", "2 Married - spouse not in household", "4 Widowed", "5 Divorced", "6 Separated", "7 Never married", "8 Living with partner"))        


wrk.out <- glm(everwrk~age_p+r_maritl, data=NH11, family = "binomial")
coef(summary(wrk.out))
summary(wrk.out)

library(effects)

data.frame(effect("r_maritl", wrk.out))


