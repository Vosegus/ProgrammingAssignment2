## Put comments here that give an overall description of what your
## functions do

## Changed the 'mean' to 'solve', changed names of matrix

makeCacheMatrix <- function(x = matrix()) {
        inver <- NULL
        set <- function(y) {
                x <<- y
                inver <<- NULL
        }
        get <- function() x
        setinversion <- function(inverse) inver <<- inverse
        getinversion <- function() inver
        list(set = set, get = get,
             setinversion = setinversion,
             getinversion = getinversion)
}


## changed 'mean' to ' solve'

cacheSolve <- function(x, ...) {
        inver <- x$getinversion()
        if(!is.null(inver)) {
                message("getting cached data")
                return(inver)
        }
        data <- x$get()
        inver <- solve(data, ...)
        x$setinversion(inver)
        inver
}
