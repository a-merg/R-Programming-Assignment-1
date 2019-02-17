pollutantmean2 <- function(directory, pollutant, id = 1:332){
    files_list <- list.files(path = directory, pattern = ".csv", full.names = TRUE)
    frame <- data.frame()
    for(i in id){
      data <- read.csv(files_list[i])
      frame <- rbind(frame, data)
      }
    
    mean(frame[,pollutant], na.rm = TRUE)
      
    }