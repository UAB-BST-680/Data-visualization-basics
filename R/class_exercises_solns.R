
library(tidyverse)
library(gapminder)
# pass ggdata into the ggplot function using %>% 


# exercise 1 --------------------------------------------------------------

# let the x-axis be the gdpPercap variable
# let the y-axis be the life expectancy variable
scat_plot <- ggplot(gapminder) + 
  aes(x = gdpPercap, y = lifeExp)

# ggplot lets you add layers however you want
# we can add points to our base plot like so
e1_soln <- scat_plot+geom_point()

write_rds(e1_soln, 'solutions/01_solution.rds')

# exercise 2 --------------------------------------------------------------

e2_soln <- ggplot(gapminder) + 
  aes(x = gdpPercap, y = lifeExp) + 
  scale_x_log10() + 
  geom_point()

write_rds(e2_soln, 'solutions/02_solution.rds')

# exercise 3 --------------------------------------------------------------

e3_soln <- e2_soln + 
  labs(
    # set the x-axis label
    x = 'Log income',
    # set the y-axis label
    y = 'Life expectancy, years'
  )

write_rds(e3_soln, 'solutions/03_solution.rds')

# exercise 4 --------------------------------------------------------------

e4_soln <- e3_soln + 
  geom_smooth()

write_rds(e4_soln, 'solutions/04_solution.rds')

# exercise 5 --------------------------------------------------------------

e5_soln <- ggplot(gapminder) + 
  aes(x = gdpPercap, y = lifeExp) + 
  scale_x_log10() + 
  geom_point(
    # this shape lets you set fill and color of points
    shape = 21,
    # note that you can set aesthetics outside of aes()
    # if you use aes(), the values are based on variables
    color = 'black',
    fill = 'grey80'
  ) + 
  geom_smooth(
    # you can use col = 'red' or color = 'red', both work
    color = 'red',
    # if se = TRUE, a ribbon is plotted to show confidence limits
    # if se = FALSE, the ribbon is omitted. 
    se = FALSE
  ) +
  labs(
    x = 'Log income',
    y = 'Life expectancy, years'
  )

write_rds(e5_soln, 'solutions/05_solution.rds')

# exercise 6 --------------------------------------------------------------

e6_soln <- e5_soln + 
  theme_minimal()

write_rds(e6_soln, 'solutions/06_solution.rds')


# exercise 7 --------------------------------------------------------------

