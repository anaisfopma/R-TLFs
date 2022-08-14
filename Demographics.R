library(clinUtils)
library(tableone)
library(tidyverse)
library(flextable)


#Load datasets
AE <- dataSDTMCDISCP01$AE
CM <- dataSDTMCDISCP01$CM
DM <- dataSDTMCDISCP01$DM
EX <- dataSDTMCDISCP01$EX
LB <- dataSDTMCDISCP01$LB
MH <- dataSDTMCDISCP01$MH
SV <- dataSDTMCDISCP01$SV
VS <- dataSDTMCDISCP01$VS





#Demographics table


#Select relevant variables
dt <- DM %>% select(AGE, SEX, RACE, ETHNIC, ACTARM)

#Create a variable list which we want in Table 1
listvar <- c("AGE", "SEX", "RACE", "ETHNIC")

#Define categorical variables
catvar <- c("SEX", "RACE", "ETHNIC")

#Total Population
table1 <- CreateTableOne(vars = listvar, data = dt, factorVars = catvar, strata = c("ACTARM"))

# Export to docx

summary_ft <- flextable(table1)
















