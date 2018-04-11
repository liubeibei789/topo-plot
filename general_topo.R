install.packages("igraph")
library(igraph)

links <- read.csv("/Users/beibei/Desktop/oregon1_adj.csv", header=T)
net <- graph_from_data_frame(d=links, directed=F)

plot(net)