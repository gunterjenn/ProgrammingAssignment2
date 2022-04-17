## create matrix inverse from matrix (x) and save inverse as "inv"

inverse.matrix <- function(x) {
  datalist <- as.vector(x)
  r <- nrow(datalist)
  c <- ncol(datalist)
  inv.datalist <- datalist^-1
  nrow.set <- nrow(x)
  ncol.set <- ncol(x)
  inv <<- matrix(inv.datalist, nrow.set, ncol.set)
  inv
}

## Check if matrix inverse "inv" exists. 
## If yes exists then generate "inv"
## If not create matrix inverse via inverse.matrix() and print it.

cacheSolve <- function(x) { 
  
ifelse(exists("inv"), print(inv), return(inverse.matrix(x)))
}





