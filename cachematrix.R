## 1) makeCacheMatrix - enter a vector consisting a number of elements perfect for a square-matrix format(e.g. a vector of four elements perfect for a 2x2 matrix ).
## You may try using this command sample to begin:    makeCacheMatrix(c(1,2,3,4))

makeCacheMatrix <- function(input) { 
  squareroot <<-sqrt(length(input))
  matrix <- matrix(input,ncol=squareroot)
  cache <<- matrix
  inverse <<- solve(cache)
  con <<- identical(cache,inverse)
  
  if(con == TRUE){
    cache <- NULL
  }
  
  if (!is.null(cache)) {
    message("Your matrix is now cached. Enter 'cacheSolve()' to execute the inversion of your matrix.")
    return(cache)
  } else {message("Please try to enter another vector of different set of elements.")}
  
}

## 2) CacheSolve - type 'cacheSolve()' next to the prompt arrow - to execute the inversion of the cached matrix
cacheSolve <- function() {
  inverse <- solve(cache)
  message("Below is the inverted matrix.")
  return(inverse)
}