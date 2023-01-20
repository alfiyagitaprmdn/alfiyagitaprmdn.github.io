setwd('C:/Users/62822/OneDrive/Desktop/METOPEL/exercise')
library('readxl')
library('tidyverse')

# baca data
dat<-read_excel('hubungan nilai eksim dan total pdb.xlsx')

# plot X dan Y
plot(dat$`Net-Export`,dat$PDB,xlab="Nilai Ekspor-Impor",ylab="Total PDB")

# regresi
reg1<-lm(dat$PDB~dat$`Net-Export`,data=dat)
summary(reg1)

# membuat error
dat$u<-resid(reg1)

# plot error
plot(dat$PDB,dat$u,xlab="Nilai Ekspor-Impor",ylab="Total PDB")
