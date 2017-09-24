# Project Euler: Problem 3
# Largest prime factor

# The prime factors of 13195 are 5, 7, 13 and 29.
# 
# What is the largest prime factor of the number 600851475143 ?


TARGET <- 12001
#TARGET <- 600851475143

computeFactorsOfOdd <- function(num, step=-2) {
  # we assume num is an odd integer
  
  oddFactors <- NULL
  
  # the factors of an odd number are odd so we can skip even numbers
  # by using a decreasing sequence, the largest factors will be first in the results vector
  for(i in seq((num - 2),3,step)) {
    if(num %% i == 0) {
      oddFactors <- c(oddFactors, i)
    }
  }
  return(oddFactors)
}

primeFactors <- NULL
for(i in seq(2,10000,2)){
  primeFactors <- c(primeFactors, computeFactorsOfOdd(TARGET-i, step=-10000))
}

for(i in seq(0,100,2)){
  primeFactors <- c(primeFactors, computeFactorsOfOdd(TARGET-i, step=-100))
}


computeFactorsOfOdd(TARGET, step = -10000)
computeFactorsOfOdd(TARGET-2, step = -10)
computeFactorsOfOdd(TARGET)
computeFactorsOfOdd(TARGET)
computeFactorsOfOdd(TARGET)
computeFactorsOfOdd(TARGET)

# since the largest factors come first in the vector, as soon as we find a prime, that is our answer
for (i in targetFactors) {
  if(is.null(computeFactorsOfOdd(i))) {
    print(i)
    break
  }
}
