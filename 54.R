slozhno <- function(){
  setwd("C:/Users/GG/Desktop/5")
  e1 <- new.env(parent = baseenv())
  e2 <- new.env(parent = baseenv())
  e3 <- new.env(parent = baseenv())
  e4 <- new.env(parent = baseenv())
  e5 <- new.env(parent = baseenv())
  assign("x", c(read.table("1.txt", sep = ",", header = FALSE)), envir = e1)
  assign("x", c(read.table("2.txt", sep = ",", header = FALSE)), envir = e2)
  assign("x", c(read.table("3.txt", sep = ",", header = FALSE)), envir = e3)
  assign("x", c(read.table("4.txt", sep = ",", header = FALSE)), envir = e4)
  assign("x", c(read.table("5.txt", sep = ",", header = FALSE)), envir = e5)
 
boxplot(c(0:1000))
  for (v in c(
    get("x", envir = e1),
    get("x", envir = e2),
    get("x", envir = e3),
    get("x", envir = e4),
    get("x", envir = e5))) boxplot(v, 0,1, add = T)
  
   df <- data.frame(
    get("x", envir = e1),
    get("x", envir = e2),
    get("x", envir = e3),
    get("x", envir = e4),
    get("x", envir = e5)
  ) 
  df
}
slozhno()