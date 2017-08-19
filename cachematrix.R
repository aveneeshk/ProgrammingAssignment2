


## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
##This function makeCacheMatrix gets a matrix as an input, set the value of the matrix,
#get the value of the matrix, set the inverse matrix and get the inverse matrix. The matrix object
#can cache its own object.

#<<- operator is used to assign a value to an object in an enviornment that is different 
#from the current enviornment.

#take the matrix as an input.
makeCacheMatrix <- function(x = matrix()) {
invMatrix <- NULL

#set the value of the matrix
setMatrix <- function(y) {
  x<<-y
  invMatrix <<- NULL
}

getmatrix <- function() x              # get the value of the matrix
setInverse <- function(inverse) invMatrix <<- inverse   #set the value of the invertible matrix
getinverse <-function() invMatrix       #get the value of the invertible matirx
list(setMatrix= setMatrix, getmatrix= getmatrix,
       setInverse= setInverse, getinverse= getinverse)

}

##The function cacheSolve takes the ouput of the previous matrix makeCacheMatrix(matrix) as an
#input and checks inverse matrix from makeCacheMatrix(matrix)has any value in it or not.
#In case inverse matrix from makeCacheMatrix(matrix) is empty, it gets the original matrix data from 
#and set the invertible matrix by using the solve funtion.
#In case inverse matrix from makeCacheMatrix(matrix) has some value in it (always works
#after running the code 1st time), it returns a message "Getting Cached Invertible Matrix"
#and the cached object.




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  
  #get the value of the invertible matrix from the makeCacheMatrix function
      invMatrix <- x$getInverse()
      if(!is.null(inMatrix)){                        #if inverse matrix is not NULL
        message("Getting Cached Invertible Matrix")   #Type message: Getting Cached Invertible Matirx
      return(invMatrix)  
      }
      
  #if value of the invertible matrix is NULL then
      MatrixData <- x$getMatrix()                   #get the original Matrix Data
      invMatrix <- solve(MatrixData, ...)           #use solve function to inverse the matrix
      x$setInverse(invMatrix)                       #set the invertible matrix
      return(invMatrix)                             #return the invertible matrix
        ## Return a matrix that is the inverse of 'x'
}

