#Script Settings and Resources
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
library(tidyverse)

#Data Import
Adata_tbl <- read_delim("../data/Aparticipants.dat", delim = "-", col_names = c('casenum', 'parnum', 'stimver', 'datadate', 'qs'))
Anotes_tbl <- read_delim("../data/Anotes.csv")
Bdata_tbl <- read_delim("../data/Bparticipants.dat", delim = "\"", col_names = c('casenum', 'parnum', 'stimver', 'datadate', 'qs'))
Bnotes_tbl <- read_delim("../data/Bnotes.txt")

#Data Cleaning
Aclean_tbl <- Adata_tbl %>%
  separate( col = "qs", into = c('q1', 'q2', 'q3', 'q4', 'q5')) %>%
  mutate(datadate = mdy_hms(datadate)) %>%
  left_join(Anotes_tbl, by = "parnum") %>%
  filter(is.na(notes))
