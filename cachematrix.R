## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function


## set the value of the matrix
## get the value of the matrix
## set the value of the inverse
## get the value of the inverse

makeCacheMatrix <- function(x = matrix()) {

      
        i  <- NULL
        set  <- function(z){
                x <<- z
                i <<- NULL 
        }
        get  <- function() x
        setinverse  <- function(inverse) i  <<- inverse
        getinverse  <- function() i
        list(set= set, get = get, 
             setinverse = setinverse, 
             getinverse = getinverse)

}


## Write a short comment describing this function


##  calculates the inverse of a matrix created with the above function. 
##   If  it has been calculated, gets the result from the cache and skips the computation. 
##  Otherwise, it calculates the inverse of the matrix and sets the value of the inverse in the cache via the setinverse function

cacheSolve <- function(x, ...) {


        i  <- x$getinverse()
        if (!is.null(i)){
                message("getting cached data")
                return(i)
        }
        data  <- x$get()
        i  <- solve(data, ...)
        x$setinverse(i)
        i
        
}
