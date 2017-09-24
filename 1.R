#Project Euler: Problem 1
#Multiples of 3 and 5


# If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
# The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

# Let's use a variable for the maximum value so that we can test easily
# We want to use one less than the stated max value so that we only use multiples below, not equal to the max value
#MAX_VALUE <- 9
MAX_VALUE <- 999

##### First, let's get all the multiples of 3 below 1000

#Set up our vectors to collect our values
multiplesOfThree <- NULL

#Calculate each multiple of 3 below our target value
for (i in 1:as.integer(MAX_VALUE/3)){
  multiplesOfThree <- c(multiplesOfThree, i * 3)
}

##### Second, let's get all the multiples of 5 below 1000

#Set up our vectors to collect our values
multiplesOfFive <- NULL

#Calculate each multiple of 5 below our target value
for (i in 1:as.integer(MAX_VALUE/5)){
  multiplesOfFive <- c(multiplesOfFive, i * 5)
}


##### Third, let's combine the vectors and remove duplicate values to avoid double-counting

allMultiples <- c(multiplesOfThree, multiplesOfFive)
allMultiples <- unique(allMultiples)

##### Finally, let's sum the values to get our answer

sum(allMultiples)