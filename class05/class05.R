# Class 5 Data Visualization

plot(1:5)


# That was base R plot- quick and not very nice!
# We will use an add on package called ggplot2

# command to install is install.packages("ggplot2")

library(ggplot2)
#Before I can use any functions from this package
# I need to load it with the library() call!


plot(cars)

#Every ggplot has at least 3 layers
# data + aes + geoms


p<- ggplot(data=cars) +
  aes(x= speed, y= dist) +
  geom_point() 

p + geom_line()



p + labs(title="Speed and Stopping Distances of Cars",
        x="Speed (MPH)", 
        y="Stopping Distance (ft)",
        subtitle = "STOP! In the Name of Love",
        caption="Dataset: 'cars'") +
        geom_smooth(method="lm", se=FALSE) + theme_bw()

# RNAseq Data

url <- "https://bioboot.github.io/bimm143_S20/class-material/up_down_expression.txt"
genes <- read.delim(url)
head(genes)

p <- ggplot(genes) + aes(x=Condition1, y=Condition2, col=State) + 
  geom_point() +
  theme_bw()

p

