install.packages("gapminder")
install.packages("tidyverse")

library(tidyverse)
library(gapminder)

ggplot(data = country_data) +
  aes(x = location, y = total_deaths_per_million, color = location) +
geom_col (width = 0.5, just = 0.5,)


install.packages ("maps")

library(maps)
world <- map_data("world")
ggplot() + 
  geom_map(data = world, map = world, aes(long, lat, map_id = region))
map_world <- map_data("world")
map_country_data <- full_join(map_world, country_data, by = c("region" = "location")) + 
ggplot(data = map_country_data) +
  aes(x = long, y = lat, group = group, fill = population)+
  geom_polygon()
  scale_fill_gradient(low = "yellow", high = "red", na.value = "grey") +
  labs (
    x = "Longitude", 
    y = "Latitude", 
    fill = "location") +
  theme_bw()  
  
  library(ggplot2)
ggplot(data = country_data) + 
  aes(x = people_vaccinated, y = new_deaths_smoothed, color = location) +
  geom_point(size = 0.3) +
  geom_smooth(method = "lm")

library(maps)
world <- map_data("world")
ggplot() + 
  geom_map(data = world, map = world, aes(long, lat, map_id = region)) 
map_world <- map_data("world")
geom_sf()
install.packages ("sf")
theme_set(theme_bw())
library ("sf")

ggplot(data = world) + 
  geom_sf() +
  xlab("Longitude") + ylab("Latitude") + 
ggtitle("World map", subtitle = paste0("(", length(unique(world$NAME)), "countries")")) +
gggplot(data = world) + 
  geom_sf(aes(fill = total_cases))

library (scales)
library (dplyr)
ggplot (country_data, aes (x = date, y = new_cases)) + 
geom_line (aes (color  = location)) + 
scale_color_manual(values = line colors) +
labs (color = location)


library (ggplot)

gapminder %>% 
  filter(location == "Ireland") %>% 
  ggplot(aes(date, new_cases, color = location)) +
  geom_line()

