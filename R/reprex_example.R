
# reprex example

# instructions: 
#  1. highlight the code you want to reprex
#  2. and hit ctrl+c (windows) or cmd+c (mac)
#  3. in your console, run reprex::reprex()
#  4. you should see the text: "Rendered reprex is on the clipboard."
#  5. open an issue on github and place your cursor in the text window
#  6. hit ctrl+v or cmd+v to paste in your reprex 

df <- data.frame(x1 = c("A", "B"))

df$x1[2] <- "C"

df


# you can also use reprex to post solutions: 

# set stringsAsFactors = FALSE to make df$x1 a character vector
df <- data.frame(x1 = c("A", "B"), stringsAsFactors = FALSE)

df$x1[2] <- "C"

df
