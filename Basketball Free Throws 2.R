
myplot <- function(z, who = 1:10){
  matplot (t(z[who,,drop=F]), type = "b", pch=15:18, col = c(1:4,6), main= "Basketball Free Throws")
  legend("bottomleft", inset=0.01, legend=Players[who], col=c(1:4,6), pch=15:18, horiz=F)
  
}
myplot(FreeThrows)
myplot(FreeThrowAttempts)

#1. FreeThrowAttempts / Game
myplot(FreeThrowAttempts)

#2. Free Throw Accuracy
myplot(FreeThrows/FreeThrowAttempts)
myplot(FieldGoals/FieldGoalAttempts)

#3. Player Style Pattern Excluding Free Throws
myplot(Points- FreeThrows/FieldGoals)

#4 Player FreeThrows and FreeThrowAttemps
myplot(FreeThrows - FreeThrowAttempts/ FieldGoalAttempts)
myplot(Points - FreeThrowAttempts/FieldGoalAttempts)

myplot(Points)

