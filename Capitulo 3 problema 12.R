Control=c(213,214,204,208,212,200,207)
T2=c(76,85,74,78,82,75,82)
T3=c(57,67,55,64,61,63,63)
T4=c(84,82,85,92,87,79,90)

df=data.frame(Control=Control,T2=T2,T3=T3,T4=T4)
df=stack(df)
names(df)=c("T","Trat")
df

boxplot(T~Trat,data=df)

str(df)
df$Trat=factor(df$Trat)

modlo=aov(T~Trat,data=df)
summary(modelo)

qqline(modelo$residuals)
qqnorm(modelo$residuals)

shapiro.test(modelo$residuals)

require(car)
leveneTest(T~Trat,data=df)
df

plot(modelo$residuals)
abline(h=0)

plot(df$Trat,modelo$residuals)





