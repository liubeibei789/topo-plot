install.packages("igraph")
library(igraph)

links <- read.csv("/Users/beibei/Desktop/toy_edge.csv", header=T)
nodes <- read.csv("/Users/beibei/Desktop/toy_node.csv", header=T)
net <- graph_from_data_frame(d=links, vertices=nodes, directed=F)

col<-c("skyblue","red")    #skyblue:sdn,red:legacy
V(net)$color=col[nodes[,2]]  #col2:type

col_2<-c("skyblue","red","grey")
E(net)$color=col_2[links[,4]]

plot(net)