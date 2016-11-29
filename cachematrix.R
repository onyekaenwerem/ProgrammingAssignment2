## makeCacheMatrix function creates a special "matrix" object that can cache its inverse.
##It is really a list containing a function to 
#set the value of the matrix
#get the value of the matrix
#set the value of the matrix inverse
#get the value of the matrix inverse

makeCacheMatrix <- function(x = matrix()) {
  inv_matrix <- NULL
  set <- function(y) {
    x <<- y
    inv_matrix <<- NULL
  }
  get <- function() x
  setinv <- function(solve) inv_matrix <<- solve
  getinv <- function() inv_matrix
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}


##cacheSolve function computes the inverse of the special "matrix" returned by makeCacheMatrix above.
##If the inverse has already been calculated (and the matrix has not changed),
##then cacheSolve should retrieve the inverse from the cache.
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
	 inv_matrix <- x$getinv()
	  if(!is.null(inv_matrix) & identical(x,y)) {
		message("getting cached data")
		return(inv_matrix)
	  }
	  data <- x$get()
	 inv_matrix <- solve(data, ...)
	 x$setinv(inv_matrx)
	 inv_matrix
}

