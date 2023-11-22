#1

install.packages("gtools")
library(gtools)
x=c(5,10,15,20,25)
n=2
p_mean=mean(x)
p_mean
p_var=((n-1)/n)*var(x)
p_var
N=2
r_s=t(combn(x,N))
r_s
s_mean=rowMeans(r_s)
s_mean
df=data.frame(r_s,s_mean)
df
sampling_dist=as.dataframe(transform(table(s_mean,prob=prop.table(freq))))
sampling_dist

#2

marks=c(47,26,45,19,07,30,27,23,12,13,48,35,28,26,50,36,26,29,30,30,46,37,39,28,29,37,18,30,36,12,28,32,29,23,28,21,13,14,22,14)
marks
p_mean=mean(marks)
p_mean
N=40
p_var=((N-1)/N)*var (marks)
p_var
p_sd=sqrt(p_var)
p_sd
random_s_5=sample(marks,5)
random_s_5
random_s_10=sample(marks,10)
random_s_10
s_mean_5=mean(random _s_5)
s_mean_5
s_mean_10=mean(random _s_10)
s_mean_10
s_var_5=var(random_sample_5)
s_var_5
s_var_10=var(random_sample_10)
s_var_10

#3

> p = seq(0.1,0.8,0.1)
> q = 1- p
> MSE_T1 = p*q /6
> MSE_T1
> MSE_T2 = (6*p*q+p**2)/25
> MSE_T2
> plot(p, MSE_T1,ylim=c(0,0.08),type = "l")
> lines(p, MSE_T2,lty=1)


> l = seq(1,5,0.5)
> MSE_T1 = l/8
> MSE_T1
> MSE_T2 =((8*l)+l^2)/81
> MSE_T2
> plot(l, MSE_T1,ylim=c(0,0.8),type = "l")
> lines(l, MSE_T2,lty=1)


> x = seq(-5,5,1)
> MSE_T1 = c(rep(0.2,11))
> MSE_T1
> MSE_T2 =((8*x)+x^2)/81
> MSE_T2
> plot(x, MSE_T1,ylim=c(-0.5,1),type = "l")
> lines(x, MSE_T2,lty=1)

#4

#4_1
> x=c(1,0,0,1,1,0,1,1,0,1,1,1,0,1,0,0,1)
> mle_p=mean(x)
> mle_p
> mle_mean=mean(x)
> mle_mean
> mle_var=mle_p*(1-mle_p)
> mle_var
> mle_p_0=(1-mle_p)
> mle_p_0

> #4_2
> x=c(4,5,3,8,0,4,1,7)
> mle_p=mean(x)
> mle_p
> n=10
> p=mle_p/10
> p
> mle_mean=n*p
> mle_mean
> mle_var=n*p*(1-p)
> mle_var
> mle_p_0=(1-p)^n
> mle_p_0

> #4_3
> x=c(0,1,2,3,4,5)
> f=c(3,6,10,6,5,4)
> l=sum(f)
> n=5
> x_bar=sum(f*x)/l
> x_bar
> mle_p=x_bar/n
> mle_p
> mle_p2=2*(1-mle_p)+3*(mle_p)^2
> mle_p2

> #4_4
> x=c(4,1,2,6,10,8,7)
> mle_p=mean(x)
> mle_p
> mle_mean=mle_p
> mle_mean
> mle_var=mle_p
> mle_var
> mle_p2=mle_p*(1-mle_p)
> mle_p2
> mle_p_0=exp(mle_p)
> mle_p_0