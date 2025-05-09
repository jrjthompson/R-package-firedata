\name{flat01}
\docType{data}
\alias{flat01}
\title{Fire spread experiments conducted in a fume hood}
\description{

The fire spread data consists of segmented RGB images from 29 fire
smouldering experiments of wax paper. The data were measured using
a digital camera at a birds-eye view above the experiment. The data
is segmented 1 frame per second. The wax paper experiments were
conducted at different angles, including 16 level experiments, 8
experiments at an angle of 11 degrees, and 5 experiments at an
angle of 32 degrees. The uphill direction in each experiment is to
the left in an image. For more details on experimentation, see
Thompson et al. (2020).
}
\usage{data("flat01")}
\format{
Each fire movie is a data frame with four dimensions. The first and
second dimensions are the rows and columns of one image. The third
dimension is each RGB channel, with the red channel (1), blue channel
(2), and green channel (3). The fourth dimension is time, starting at
igntion (time point 1), and then each RGB image is seperated by one
second. To access each video, use \code{flat##}, \code{slope110#},
and \code{slope320#}.
}

\source{John R.J. Thompson}
\references{

  Thompson, J.R.J., Wang, X.J., & Braun, W.J. (2020) \dQuote{A mouse
  model for studying fire spread rates using experimental micro-fires},
  \emph{Journal of Environmental Statistics}, 9(1), 1-19.
  <[http://www.jenvstat.org/v09/i06](http://www.jenvstat.org/v09/i06)>

  Wang, X.J., Thompson, J.R.J., Braun, W.J., & Woolford, D.G. (2019)
  \dQuote{Fitting a stochastic fire spread model to data.}
  \emph{Advances in Statistical Climatology, Meteorology and
  Oceanography}, 5(1), 57-66.
  <[https://ascmo.copernicus.org/articles/5/57/2019/](https://ascmo.copernicus.org/articles/5/57/2019/)>

}

\examples{
## Example - viewing a fire spread experiment that contains change-points

data("flat01")

## Plot the red channel at 10 seconds as a 2d image

image(1:dim(flat01)[1], 1:dim(flat01)[2],
      matrix(flat01[,,1,10], nrow=dim(flat01)[1], byrow=FALSE))
}

\keyword{datasets}
