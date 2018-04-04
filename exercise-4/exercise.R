# Exercise 4: functions and conditionals

# Define a function `is_twice_as_long` that takes in two character strings, and 
# returns whether or not (e.g., a boolean) the length of one argument is greater
# than or equal to twice the length of the other.
# Hint: compare the length difference to the length of the smaller string
is_twice_as_long <- function(first_string, second_string) {
  if (nchar(first_string) * 2 <= nchar(second_string) ||  nchar(second_string) * 2 <= nchar(first_string)) {
    status <- TRUE
  } else {
    status <- FALSE
  }
  return(status)
}

# Call your `is_twice_as_long` function by passing it different length strings
# to confirm that it works. Make sure to check when _either_ argument is twice
# as long, as well as when neither are!

is_twice_as_long("hi", "no") 
is_twice_as_long("my", "textbook")
is_twice_as_long("hi", "nope")

# Define a function `describe_difference` that takes in two strings. The
# function should return one of the following sentences as appropriate
#   "Your first string is longer by N characters"
#   "Your second string is longer by N characters"
#   "Your strings are the same length!"
describe_difference <- function(string_1, string_2) {
  if (nchar(string_1) == nchar(string_2)) {
    return("Your strings are the same length!")
  } else if (nchar(string_1) > nchar(string_2)) {
    n <- nchar(string_1) - nchar(string_2)
    return(paste("Your first string is longer by", n, "characters"))
  } else {
    n <- nchar(string_2) - nchar(string_1)
    return(paste("Your second string is longer by", n, "characters"))
  }
}


# Call your `describe_difference` function by passing it different length strings
# to confirm that it works. Make sure to check all 3 conditions1
describe_difference("um", "ok")
describe_difference("exhausted", "hungry")
describe_difference("yum", "coffee")
