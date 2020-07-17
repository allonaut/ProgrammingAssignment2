## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The below function will create a matrix that will cache its inverse.
## First is to set the value of the matrix, then return the value of said
## matrix. Then we can continue to get and set the inverse.

makeCacheMatrix <- function(x = matrix()) {

makeCacheMatrix <- function(x = matrix()){
        inv <- NULL
        set <- function(p){
                x <<- p
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set, 
             get = get, 
             setInverse = setInverse, 
             getInverse = getInverse)
}


## Write a short comment describing this function
## The below function computes the inverse of the matrix returned above,
## as long as the inverse has been computed first.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getInverse()
        if(!is.null(inv)){
                message("getting inversed matrix")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setInverse(inv)
        inv
}

