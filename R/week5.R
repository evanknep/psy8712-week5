#Script Settings and Resources
setwd(dirname(rstudioapi::getActiveDocumentContext()$path))
library(tidyverse)

#Data Import
Adata_tbl <- read_delim("../data/Aparticipants.dat", delim = "-", col_names = c('casenum', 'parnum', 'stimver', 'datadate', 'qs'))
Anotes_tbl <- read_delim("../data/Anotes.csv")
Bdata_tbl <- read_delim("../data/Bparticipants.dat", delim = "-", col_names = c('casenum', 'parnum', 'stimver', 'datadate', 'qs'))
Bnotes_tbl <- read_delim("../data/Bnotes.txt")