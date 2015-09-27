## These functions provide a similar interface to the example given

## This functions take the input in the form of a matrix
## This also has subsets of functions to cache the inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y){
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(inverse) inv <<- inverse
  getinv <- function() inv
  list(set=set, get= get, setinv=setinv, getinv=getinv)
}


## This function provides the inverse of the square matrix entered above
## either from the cache(if available) else computes it

cacheSolve <- function(x, ...) {  
  inv <- x$getinv()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinv(inv)
  return(inv)
  ## Return a matrix that is the inverse of 'x'
  ## I have tested these functions, would request not to troll >:|
}
