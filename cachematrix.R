## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
library(MASS) 
makeCacheMatrix <- function(x = matrix()) {
inv<-NULL    #initializing inverse as NULL
set<-function(y) {
                 x<<-y
                 inv<<-NULL
}
get<-function()x        #function to get matrix x 
setinv<-function(inverse)inv<<-inverse
getinv<-function(){
                   inver<-ginv(x)
                   inverse %>% x     #function to obtain inverse of the matrix
                   }
list(set = set, get = get,
     setinv = setinv
     getinv = getinv
}



## Write a short comment describing this function

cacheSolve <- function(x, ...) 
{
  inv<-x$getinv()
  if(! is.null((inv)){            #checking wether inverse is NULL
                      message("getting cached data!")
                      return(inv)        #returns inverse value
  }
 }
 data<-x$get()
 inv-solve(data......)    #calculate inverse value 
 x$setinv(inv)
 inv     
}  
  
 
        ## Return a matrix that is the inverse of 'x'



