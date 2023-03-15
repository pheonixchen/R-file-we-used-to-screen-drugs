library(dplyr)
library(VennDiagram)
library(grid)
library(futile.logger)
library(readxl)
drugs <- read.csv("drugs.csv", sep=";")
drugs_AlogP_suit <- drugs[drugs$AlogP <= 4, ]
drugs_Pchembl_suit = read_excel("drugs_that_higher_than6.xlsx")
# 创建元素列表
drugs_AlogP_suit=drugs_AlogP_suit$ChEMBL.ID
alldrugs=drugs$ChEMBL.ID
drugs_Pchembl_suit=drugs_Pchembl_suit$IDs
write.csv(drugs, "alldrugs.csv")
write.csv(drugs_AlogP_suit,"drugs_AlogP_suit.csv")
