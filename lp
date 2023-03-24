3 2 180
X1 x2
2 1 <= 100
1 1 <= 80
X1 x2
20 60
library(lpSolve)
o=c(3,2)
c=matrix(c(2,1,1,1),nrow=2,byrow=T)
d=c('<=','<=')
r=c(100,80)

sol=lpSolve::lp("max",o,c,d,r,compute.sens=T)
sol$solution
20 60
