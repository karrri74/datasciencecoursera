
makeCacheMatrix <- function(x = matrix()) { 
##make a function to cache the matrix in parent env. env is Environmant in the future..
m <- NULL 							##reset m
         print(environment())		##show which env were in
         evn <- environment()		##set env
         print(parent.env(evn))		##show parent env	
         set <- function(y) {		##cache the variables to the parent	
                 x <<- y
                 m <<- NULL
     }

}

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        if(!is.null(m)) { ##if something is cached, get it..
                message("getting cached data")
                return(m)
        }
        data <- x				#assign data
        m <- solve(data, ...)	#inverse x
        m						#print the inverse
		
}
