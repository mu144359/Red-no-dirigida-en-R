####################
#                  #
# Copiar todo esto #
#                  #
####################
# Hecho con gusto por Selene Muñoz Ortega (UAEH)

#Laboratorio - Análisis de Redes en R - Indicadores básicos globales
library(EconGeo)

#CARGAR DATA
EL = read.csv("https://raw.githubusercontent.com/PABalland/ON/master/lesmis-el.csv")

#VER ENCABEZADO
head(EL)

#TRANSFORMAR A MATRIZ
MM <- get.matrix(EL)

library(igraph)

g <- graph_from_data_frame(d=EL, directed=F)
g
plot(g)

EL$Weight = NULL
head(EL)
library(networkD3)
simpleNetwork(EL)

#VER MATRIZ SIMETRICA (RED NO DIRIGIDA -RED BIDIRECCIONAL)
#DIREFERENCIAS ENTRE RED DIRIGIDA Y NO DIRIGIDA