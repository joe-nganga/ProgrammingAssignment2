## The first function creates a matrix and caches its inverse
## The second fuction solves the inverse if it's not cached

## Creating a matrix and caching its inverse

makeCacheMatrix <- function(x = matrix()) {
  i <- NULL
  set <- function(y){
    x <<- y
    i <<- NULL
  }
  get <- function() x
  sitinv <- function(solve) i <<- solve
  getinv <- function() m
  list(set = set, get = get, 
       setinv = setinv,
       getinv = getinv)

}


## Solving the inverse of the matrix above if it's not cached

cacheSolve <- function(x, ...) {
  i <- x$getinv()
  if(! is.null(i)){
    message("getting cached inverse")
    return(i)
  }
  matrix <- x$get
  i <- solve(matrix,...)
  x$setinv(i)
  i
        ## Return a matrix that is the inverse of 'x'
}
