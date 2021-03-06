\name{scout-package}
\alias{scout-package}
\alias{scout-package}
\docType{package}
\title{
Implements covariance-regularized regression, aka the Scout Method.
}
\description{ Functions for implementing covariance-regularize
  regression.
}
\details{
\tabular{ll}{
Package: \tab scout\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2008-11-20\cr
License: \tab GPL (>=2) \cr
}

The main function is "scout", which takes in a data matrix x and an
outcome vector y and estimates regression coefficients for Scout(2,1)
for a range of tuning parameter values. Alternatively one can specify
other tuning parameter values  and one can also perform
Scout(1,1), Scout(2,.), or Scout(1,.). Cross-validation and prediction
functions also are available.
}
\author{
Daniela Witten and Robert Tibshirani

Maintainer: Daniela Witten <dwitten@stanford.edu>
}
\references{
Witten and Tibshirani (2008) Covariance-regularized regression and
classification for high-dimensional problems. Journal of the Royal
  Statistical Society, Series B 71(3): 615-636.
}

\keyword{ package }
\seealso{
<http://www-stat.stanford.edu/~dwitten>
}
\examples{
library(lars)
data(diabetes)
attach(diabetes)
\dontrun{cv.out <- cv.scout(x2,y,p1=1,p2=1,K=3)}
\dontrun{print(cv.out)}
\dontrun{out <- scout(x2,y,p1=1,p2=1,lam1=cv.out$bestlam1,lam2=cv.out$bestlam2)}
\dontrun{coef <- out$coef[1,1,]}
detach(diabetes)
}
