#Charger des librairies
library(tidyverse)
library(plotly)

#Charger les jeux de données

clients <- read_csv("data/raw/client.csv")
categories <- read_csv("data/raw/category_sales.csv")
sales_by_store <- read_csv("data/raw/sales_by_store.csv")
category_by_shop <- read_csv("data/raw/categories_by_boutik.csv")
top_ten <- read_csv("data/raw/Topten.csv")



#1-traitement & visualisation de catégorie

ggplot(categories,aes(category,total_sales,fill = category))+ 
  geom_bar(stat = "identity")+
  labs(title = "Visualization des ventes par catégories")+
  coord_flip()

#ggsave("outputs/plots/category_sales.png")
#traitement & visualisation de clients
