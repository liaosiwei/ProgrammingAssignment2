## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
# add some members and methods to the input data

makeCacheMatrix <- function(x = matrix()) {
    invMatrix <- NULL
    
    set <- function(y) {
        x <<- y
        invMatrix <<- NULL
    }
    
    get <- function() x
    
    setinverse <- function(inverse) invMatrix <<- inverse
    getinverse <- function() invMatrix
    list(set = set, get = get, 
         setinverse = setinverse,
         getinverse = getinverse)
}


## Write a short comment describing this function
# get input matrix's inversion
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inverseM <- x$getinverse()
    if (!is.null(inverseM)) {
        message("getting inversed matrix")
        return (inverseM)
    }
    mat <- x$get()
    inverseM <- solve(mat)
    x$setinverse(inverseM)
    inverseM
}
