## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}

###SOLUTION

# makeCacheMatrix: This function creates a special "matrix" 
#object that can cache its inverse.

#1- Function for inverse
makecacheMatrix <- function(x = matrix()){
# For null values
  i <- NULL
  s <-function(y){
    x<<-y
    i<<-NULL
  }
  # Function to get de inverse
  get <- function() x
    setinverse<-function(inverse) i <<- inverse
    getinverse<-function() i
      list(s=s,get=get,setinverse=setinverse,getinverse=getinverse)
}

#cacheSolve: This function computes the inverse of the special "matrix" 
#returned by makeCacheMatrix above. If the inverse has already been 
#calculated (and the matrix has not changed), then the cachesolve should 
#retrieve the inverse from the cache.

cacheSolve<-function(x,...){
  #For return the inverse of x
  i<- x$getinverse()
    if(!is.null(i)){
      message("Getting Cache Information")
        return(i)
    }
  # variable information
  information<-x$get()
  i<-solve(information,...)
  x$setinverse(i)
  i
}
