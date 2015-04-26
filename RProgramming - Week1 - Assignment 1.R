pollutantmean <- function(directory,pollutant,id=1:332){
  comp_pol <-read.table(text="",col.names=c("Date", "sulfate", "nitrate","ID"))
  for (i in id){
    filnam <- toString(paste(directory ,"/", toString(sprintf("%03d",i)), ".csv",sep=""))
    pol_table <-read.csv(filnam,header = TRUE, sep =",")
    j=is.na(pol_table[pollutant])
    comp_pol<-rbind(comp_pol[,],pol_table[!is.na(pol_table[pollutant]),])
  }
  ret_val <-mean(comp_pol[[pollutant]])
}

#fildir<- "~/Documents/R Programming Course/Specdata/specdata/"

k <- pollutantmean("specdata", "nitrate", 70:72)



