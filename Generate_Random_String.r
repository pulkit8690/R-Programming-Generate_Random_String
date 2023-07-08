# Install the 'random' package
install.packages("random")

# Load the 'random' library
library(random)

# Set the number of lines
num_lines <- 1000

# Generate random strings
string_5 <- paste(sample(LETTERS, 5, replace = TRUE), collapse = "")
number_4 <- paste(sample(0:9,4,replace = TRUE),collapse = "")
string_1 <- paste(sample(LETTERS, 10, replace = TRUE),collapse = "")


random_strings <- replicate(num_lines, {paste(string_5, number_4,string_1)})


# Write the random strings to a file
file_path <- "C:/Users/Pulkit/Desktop/random.txt"
writeLines(random_strings, file_path)

# Confirmation message
cat(paste("File", file_path, "created with", num_lines, "lines of random strings."))

