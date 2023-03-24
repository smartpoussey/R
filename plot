cons1<-function(x)6-x
cons2<-function(x)5-0.5*x
library(ggplot2)
p<-ggplot(data=data.frame(x=0),aes(x=x))+
  geom_vline(xintercept=0)+
  geom_hline(yintercept=0)+
  stat_function(colour="red",fun=cons1)+
  stat_function(colour="yellow",fun=cons2)+
  geom_vline(xintercept=4 , colour="green")+
  scale_x_continuous(breaks=seq(0,10,1) ,lim=c(0,10))+
  scale_y_continuous(breaks=seq(0,10,1) ,lim=c(0,10))+
  labs(title="r program" , x="x",y="y")
feasible<-data.frame(x=c(0,4,4,2,0),y=c(0,0,2,4,5))
p<-p+geom_polygon(data=feasible,mapping=aes(x=x,y=y),fill="blue")
print(p)
