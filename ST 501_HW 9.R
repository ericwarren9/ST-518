# Purpose:  To make plots for ST 501 HW 9


# Make sequence -----------------------------------------------------------

# Set up the for loop
set.seed(99)
x <- runif(min = 0, max = 1, n = 1000)
my_list1 <- list()
my_list2 <- list()

# Make the sequence in list form
for (n in 1:length(x)){
  vec1 <- n
  my_list1[[n]] <- vec1
  vec2 <- sum(x[1:n])
  my_list2[[n]] <- vec2
}

# Unlist lists for vectors of both n and S_n
n <- unlist(my_list1)
S_n <- unlist(my_list2)

# Data frame with sequence
df <- data.frame(cbind(n, S_n))


# Make plots --------------------------------------------------------------

# Part A
plot(df$n, df$S_n, main = "Plot of S_n", xlab = "n", ylab = "S_n")

# Part B
df$partB <- df$S_n/df$n
plot(df$n, df$partB, main = "Plot of S_n/n", xlab = "n", ylab = "S_n/n")

# Part C
df$partC <- df$S_n - (df$n / 2)
plot(df$n, df$partC, main = "Plot of S_n-(n/2)", xlab = "n", ylab = "S_n-(n/2)")

# Part D
df$partD <- (df$S_n - (df$n / 2)) / n
plot(df$n, df$partD, main = "Plot of (S_n-(n/2)) / n", xlab = "n", ylab = "(S_n-(n/2)) / n")

# Part E
df$partE <- df$partD <- (df$S_n - (df$n / 2)) / sqrt(n)
plot(df$n, df$partE, main = "Plot of (S_n-(n/2)) / sqrt(n)", xlab = "n", ylab = "(S_n-(n/2)) / sqrt(n)")