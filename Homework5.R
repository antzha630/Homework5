# Anthony Zhang
# UT eid : az22589

#scraping
#3 teams used: Washington Mystics, Dallas Wings, LA SPARKS
#reading files
WNBA <- read.csv("WNBA.csv")

# Number 2
#histogram of 3 points made vs frequency, xlim is 0-120, y lim is 0-30
hist(WNBA$X3P,main='Histogram of 3 Pointers Made',xlab='3 Pointers Made',ylab = 'Frequency',col='Blue',xlim=c(0,120), ylim = c(0,30))

# Number 3
#dot plot of minutes played vs total rebounds, pch set to 20
plot(WNBA$MP,WNBA$TRB,main='Minutes Played Versus Total Rebounds',xlab='Minutes Played',ylab='Total Rebounds',pch=20)
#select random player / random row in the WNBA csv
random_player <- WNBA[sample(nrow(WNBA), 1), ]
#highlight point on graph red and change pch / cex to make unique
points(random_player$MP, random_player$TRB, col = "red", pch = 18, cex = 1.5)

