## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

## This assignment is to write a pair of R functions to cache
## the inverse of a matrix

## 1. makeCacheMatrix: This function creates a special "matrix" object
## that can cache it inverse.

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL 
        }
        get <- function()x
        setinvert <- function(invert) m <<- invert
        getinvert <- function() m
        list(set = set, get = get,
             setinvert = setinvert,
             getinvert - getinvert)
}

## 2. CacheSolve: This function computes the inverse of the special "matrix"
## returned by makeCacheMatrix.

cacheSolve <- function(x, ...) {
        
        ## Return a matrix that is the inverse of x
        x <- x$getinvert()
        if(!is.null(m)) {
                message ("getting cached data")
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinvert(x)
        m
}
