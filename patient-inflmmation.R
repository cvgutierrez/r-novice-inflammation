# Carolina Gutierrez
# 12/8/21
# Homework 10 patient-inflmmation.R code

package(readr)
library(readr)

data1 = read.csv("data/data/inflammation-01.csv", header = FALSE, sep = ',')

class(data1)
# 8A
# output of type for data1 is "data.frame"

dim(data1)
# 8B
# Output of dim() is 60, 40 which represents the 60 rows of the 40 columns, or in other words 60 patients and 40 days

# 8C
# how to select first ten columns of values for the first 4 rows?
data1[1:4, 1:10]

# how to select first ten columns of values for rows 5 through 10
data1[5:10, 1:10]

# 8D
patient1 = data1[1,]
max(patient1)
# what is the output of the above command?
# 18 is the output
# how to change the max to sum?
sum(patient1)

# 8D
# find the minimum inflammation for patient 2 on day 7
min(data1[2,])
p2d7 = data1[2, 'V7']
p2d7
# minimum inflammation for patient 2 is 0
# but the value for patient 2 on day 7 is 3
# honestly wasn't sure what you meant with the question

# 8F
mean(as.numeric(data1[1,]))
# what is the output of the above command?
# 5.45 is the output

max_day = apply(data1,2, max)
max_day
plot(max_day)
# what does the plot look like? And why do you this it looks this way?
# the plot looks like a ^ where it steadily increases then steadily decreases with no other changes.
# I think it looks this way because these patients are being studied and treated for inflammation, so most likely it takes around 3 weeks before the treatment works or they can't start their treatment until the patient reaches a certain level of inflammation

min_day = apply(data1,2, min)
min_day
plot(min_day)
# what happens when you plot the min day inflammation? Do you think this result is correct? why or why not?
# The plot has a similar trend to the max plot where it is a ^ shape but the values are not steadily increasing or decreasing.
# I think this is correct because it is possible that the 60 different paitents had different speeds of increasing and decreasing inflammation but overall the trend between patients are similar since the peak days are the same and the plot generally has a similar shape.

