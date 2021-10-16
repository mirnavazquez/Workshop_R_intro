# Install packages --------------------------------------------------------####
#install.packages(c("tidyverse", "plotly", "palmerpenguins"))
# Call library ------------------------------------------------------------####
library(palmerpenguins)
library(tidyverse)
library(plotly)
# Explore the dataset -----------------------------------------------------####
penguins
as.data.frame(penguins)
View(penguins)
# Export and import -------------------------------------------------------####
write.table(penguins, file = "Pinguinos", quote = F, sep = "\t", row.names = F)
read_delim("Pinguinos", delim = "\t") #tibble
read.table("Pinguinos", sep="\t", header=T)
# Tidy in action plus ggplot ---------------------------------------------#####
penguins %>% #pipe
  filter(!is.na(sex)) %>%
  ggplot(aes(x=bill_length_mm, y=body_mass_g, shape= sex, color=species)) +
  geom_point()
# Option to save ---------------------------------------------------------####
png("my_first_plot.png")
penguins %>% #pipe
  filter(!is.na(sex)) %>%
  ggplot(aes(x=bill_length_mm, y=body_mass_g, shape= sex, color=species)) +
  geom_point()
dev.off()



