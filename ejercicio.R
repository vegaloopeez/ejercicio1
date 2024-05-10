library(readxl)
library(lubridate)
library(dplyr)

datos<-read_xlsx("datos/online_retail_II.xlsx")
str(datos)
datos$InvoiceDate<-ymd_hms(datos$InvoiceDate)
datos$Invoice<- as.factor(datos$Invoice)

summary(datos)
head(datos)
str(datos)
class()
length()
dim()

pedidos_dif<-length(unique(datos$Invoice))
