rise.unit.data <- read.csv("D:\\Data\\Rise to War Unit data.csv", sep = ";", header = TRUE)
rise.unit.data <- rise.unit.data[,-c(11:13)]
colnames(rise.unit.data)[1] <- c("Name")
colnames(rise.unit.data)[14:17] <- c("Diff.Lumber", "Diff.Iron", "Diff.Grain", "Tot.Diff")

summary(rise.unit.data)


rise.unit.data$Tot.Min.Dam <- rise.unit.data$Min.Dam * rise.unit.data$Command
rise.unit.data$Tot.Max.Dam <- rise.unit.data$Max.Dam * rise.unit.data$Command
rise.unit.data$Tot.HP <- rise.unit.data$HP * rise.unit.data$Command
rise.unit.data$Tot.Siege <- rise.unit.data$Siege * rise.unit.data$Command


library(psych)

rise.unit.data_total <- rise.unit.data[,c(4, 8:9, 11:14,17:19)]

## Descriptive statistics for Faction, and Faction & Tier
describe.by(rise.unit.data_total, group = "Faction")
describe.by(rise.unit.data_total, group = c("Faction", "Tier"))

rise.unit.data_total.type <- rise.unit.data[, c(2:4, 8:9, 11:14, 16:19)]
describe.by(rise.unit.data_total.type, group = c("Faction", "Tier", "Subtype"))