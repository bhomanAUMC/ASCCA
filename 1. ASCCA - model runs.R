# This is an important function in R that determines
# where the files need to be copied from and towards
# in order to run the model. So it copies the model files
# and all the input files needed to run ASCCA from a set
# directory

##################################################

RunCopyInput <- function(path.copy.from, path.copy.to){
  
  path.input.men    <- paste(path.copy.from, "Men",                sep = "/") 
  path.input.women  <- paste(path.copy.from, "Women",              sep = "/") 
  
  input.files.men   <- list.files(paste(path.input.men,   "input", sep = "/"), pattern = ".csv", full.names = TRUE)
  input.files.women <- list.files(paste(path.input.women, "input", sep = "/"), pattern = ".csv", full.names = TRUE)
  
  file.copy(recursive = TRUE, copy.date = TRUE, overwrite = TRUE, from = input.files.men,   to = paste(path.copy.to, "Men/input",   sep = "/"))
  file.copy(recursive = TRUE, copy.date = TRUE, overwrite = TRUE, from = input.files.women, to = paste(path.copy.to, "Women/input", sep = "/"))
}

##################################################

# een functie maken die het model en de bijbehorende
# bestanden aanwijst en kopieerd naar alle Men en Women


RunCopyModel <- function(path.copy.from, path.copy.to){
  
  crc_simulation    <- paste(path.copy.from, "crc_simulation.exe", sep = "/")
  libgcc            <- paste(path.copy.from, "libgcc_s_dw2-1.dll", sep = "/")
  libstdc           <- paste(path.copy.from, "libstdc++-6.dll",    sep = "/")
  
  file.copy(recursive = TRUE, copy.date = TRUE, overwrite = TRUE, from = crc_simulation,    to = paste(path.copy.to, "Men",         sep = "/"))
  file.copy(recursive = TRUE, copy.date = TRUE, overwrite = TRUE, from = crc_simulation,    to = paste(path.copy.to, "Women",       sep = "/"))
  file.copy(recursive = TRUE, copy.date = TRUE, overwrite = TRUE, from = libgcc,            to = paste(path.copy.to, "Men",         sep = "/"))
  file.copy(recursive = TRUE, copy.date = TRUE, overwrite = TRUE, from = libgcc,            to = paste(path.copy.to, "Women",       sep = "/"))
  file.copy(recursive = TRUE, copy.date = TRUE, overwrite = TRUE, from = libstdc,           to = paste(path.copy.to, "Men",         sep = "/"))
  file.copy(recursive = TRUE, copy.date = TRUE, overwrite = TRUE, from = libstdc,           to = paste(path.copy.to, "Women",       sep = "/"))
} 



##################################################
### NU HANDMATIG BATCHFILE OPENEN IN JE MAPPEN ###
##################################################