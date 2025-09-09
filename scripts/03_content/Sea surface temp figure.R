#Build a asimple graph

#load packages
library(ggplot2)
library(EVR628tools)

#Load data
data("data_heatwaves")

#Build a plot
p <- ggplot(data = data_heatwaves,
       mapping = aes(x = year, y = temp_mean,
                     group = paste(fishery, eu_rnpa))) +
  geom_line()


p

#Modify plot Lina Aragón

p2 <- ggplot(data = data_heatwaves,
            mapping = aes(x = year, y = temp_mean,
                          group = paste(fishery, eu_rnpa),
                          colour = paste(fishery, eu_rnpa))) +
  geom_line()


p2


p3 <- ggplot(data = data_heatwaves,
             mapping = aes(x = year, y = temp_mean,
                           group = paste(fishery, eu_rnpa))) +
  geom_line() +
  facet_wrap(~ fishery, ncol=2, scales = "free_y")


p3
#Save my plot
#by adding and running the p item - can see it in environment now

#Export my plot
ggsave(plot = p,
       filename = "results/img/my_first_plot.png")
