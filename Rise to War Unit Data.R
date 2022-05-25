rise.unit.data <- read.csv2("D:\\Data\\Rise to War Unit data.csv", sep = ";", header = TRUE)
rise.unit.data <- rise.unit.data[,-c(12:13)]
colnames(rise.unit.data)[1] <- c("Name")

summary(rise.unit.data)


rise.unit.data$Tot.Min.Dam <- rise.unit.data$Min.Dam * rise.unit.data$Command
rise.unit.data$Tot.Max.Dam <- rise.unit.data$Max.Dam * rise.unit.data$Command
rise.unit.data$Mean.Dam <- ((rise.unit.data$Min.Dam + rise.unit.data$Max.Dam) / 2) * rise.unit.data$Command
rise.unit.data$Tot.HP <- rise.unit.data$HP * rise.unit.data$Command
rise.unit.data$Tot.Siege <- rise.unit.data$Siege * rise.unit.data$Command


library(psych)

rise.unit.data_total <- rise.unit.data[,c(2:5,9:10,12:22)]

## Descriptive statistics for Faction, and Faction & Tier
describeBy(rise.unit.data_total, group = c("Tier" ,"Faction"))

describeBy(rise.unit.data_total, group = c("Faction", "Type", "Tier"))

describeBy(rise.unit.data_total, group = c("Tier", "Race", "Faction"))
describeBy(rise.unit.data_total, group = c("Type", "Tier", "Race"))


