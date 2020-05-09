#I TOOK THE MEAN EXAPLE AND ADAPT IT TO WORK WITH A MATRIX 
# This takes a Matrix and saves it in cache 
C:\Users\marti\Documents\GitHub\ProgrammingA
makeCacheMatrix <- function(x = matrix()) {
  invr <- NULL
  set <- function(y) {
    x <<- y
  invr <<- NULL
  }
  get <- function() x
  setinversa <- function(inverse) invr <<- inverse
  getinversa <- function()invr
  list(set = set, get = get,
       setinversa = setinversa,
       getinversa = getinversa)
}



cacheSolve <- function(x, ...) {
  invr <- x$getinversa()
  if(!is.null(invr)) {
    message("Getting cached data for your Matriz")
    return(invr)
  }
  mat <- x$get()
  invr <- solve(mat, ...)
  x$setinversa(invr)
  invr
}
