# Topic - To determine the quality of red wine based on different parameters 
# Calling of the csv file 
wine <- read.csv("winequality_red.csv")
head(wine)

# A bar graph to tell the quality of wine
ab <- table(wine$quality)
barplot(ab, main='Plot of wine based on quality ', 
        col=c('red','orange','steelblue'), xlab='Quality',
        ylab='count')

# Principal Component Analysis
wine_scores <- princomp(wine, cor = TRUE, scores = TRUE, covmat = NULL)
summary(wine_scores)
str(wine_scores)
loadings(wine_scores)
plot(wine_scores)

# A histogram which tells us about the density 
aa <- table(wine$density)
hist(aa, main='Plot of wine based on density ', 
     col=c('red','orange','steelblue'), xlab='Density',
     ylab='count')

# Function to tell how many wines are good, bad, and normal quality 
No <- ifelse(wine$quality < 6, 'bad', 'good')
No[wine$quality == 6] <- "normal"
No <- as.factor(No)
table(No)

# Function to find the mean 
x <- mean(wine$volatile.acidity)
y <- mean(wine$chlorides)
v <- mean(wine$alcohol)
c <- mean(wine$residual.sugar)
p <- mean(wine$sulphates)

# Box Plot For Quality and alcohol content
z <- c(wine$alcohol)
d <- c(wine$quality)
boxplot(z ~ d, wine, xlab='quality', ylab='alcohol',
        main='Graph of quality vs alcohol', cex.main=1.2)

# Scatter plotting For Quality and other parameters
# For Quality = 7 
with(subset(wine, quality == 7), 
     plot(fixed.acidity, volatile.acidity, col='steelblue', pch=20, cex=1.5)) 
title('Fixed Acidity and volatile acidity for wine quality = 7')
with(subset(wine, quality == 7), 
     plot(free.sulfur.dioxide, total.sulfur.dioxide, col='red', pch=20, cex=1.5)) 
title('Free Sulfur dioxide and Total sulphur dioxide for wine quality = 7')

# For Quality = 6
with(subset(wine, quality == 6), 
     plot(fixed.acidity, volatile.acidity, col='orange', pch=20, cex=1.5)) 
title('Fixed Acidity and volatile acidity for wine quality = 6')
with(subset(wine, quality == 6), 
     plot(free.sulfur.dioxide, total.sulfur.dioxide, col='brown', pch=20, cex=1.5)) 
title('Free Sulfur dioxide and Total sulphur dioxide for wine quality = 6')

# For Quality = 5
with(subset(wine, quality == 5), 
     plot(fixed.acidity, volatile.acidity, col='yellow', pch=20, cex=1.5)) 
title('Fixed Acidity and volatile acidity for wine quality = 5')
with(subset(wine, quality == 5), 
     plot(free.sulfur.dioxide, total.sulfur.dioxide, col='red', pch=20, cex=1.5)) 
title('Free Sulfur dioxide and Total sulphur dioxide for wine quality = 5')

# A bar graph to compare Quality and chlorides
kk <- table(wine$chlorides, wine$quality)
barplot(kk, main='A graph to compare Quality and chlorides', 
        col=c('red','orange','steelblue','green','yellow','pink','brown','darkgreen'),
        legend=rownames(kk), xlab='Quality', ylab='chlorides')

# A bar graph to compare Quality and Sulphates
AA <- table(wine$chlorides, wine$quality)
barplot(AA, main='A graph to compare Quality and Sulphates', 
        col=c('red','orange','blue','green','yellow','pink','brown','darkgreen'),
        legend=rownames(AA), xlab='Quality', ylab='Sulphates')

print("Result from the above observation")
print("From the above observation, we can conclude that when quality is greater than 6, it is ideal to drink. When the quality of wine is equal to 6, it is considered normal. However, when the quality of wine is less than 6, it is not ideal to drink, as indicated by the above results.")
