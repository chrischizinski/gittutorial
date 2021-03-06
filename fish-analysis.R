.libPaths("P:/RLibrary") #set library path

library(tidyverse) 
source("R/themes.R")


fishData <-read_csv("data/Gaeta_etal_CLC_data.csv")

fishData %>% 
  mutate(length_cat = case_when(length >= 300 ~ "big",
                                length < 300 ~ "small")) -> fishData

head(fishData)

