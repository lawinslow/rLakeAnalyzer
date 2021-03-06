% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/schmidt.stability.R
\name{schmidt.stability}
\alias{schmidt.stability}
\title{Calculate the Schmidt stability}
\usage{
schmidt.stability(wtr, depths, bthA, bthD, sal = 0)
}
\arguments{
\item{wtr}{a numeric vector of water temperature in degrees C}

\item{depths}{a numeric vector corresponding to the depths (in m) of the wtr
measurements}

\item{bthA}{a numeric vector of cross sectional areas (m^2) corresponding to
bthD depths}

\item{bthD}{a numeric vector of depths (m) which correspond to areal
measures in bthA}

\item{sal}{a numeric vector of salinity in Practical Salinity Scale units}
}
\value{
a numeric vector of Schmidt stability (J/m^2)
}
\description{
Schmidt stability, or the resistance to mechanical mixing due to the
potential energy inherent in the stratification of the water column.

Schmidt stability was first defined by Schmidt (1928) and later modified by
Hutchinson (1957). This stability index was formalized by Idso (1973) to
reduce the effects of lake volume on the calculation (resulting in a mixing
energy requirement per unit area).
}
\examples{


	bthA	<-	c(1000,900,864,820,200,10)
	bthD	<-	c(0,2.3,2.5,4.2,5.8,7)
	
	wtr	<-	c(28,27,26.4,26,25.4,24,23.3)
	depths	<-	c(0,1,2,3,4,5,6)
	
	cat('Schmidt stability for input is: ')
	cat(schmidt.stability(wtr, depths, bthA, bthD))
}
\references{
Schmidt, W., 1928. \emph{Ueber Temperatur and
Stabilitaetsverhaltnisse von Seen}. Geo- graphiska Annaler 10, 145-177.

Hutchinson, G.E., 1957. \emph{A Treatise on Limnology}, vol. 1. John Wiley &
Sons, Inc., New York.

Idso, S.B., 1973. \emph{On the concept of lake stability}. Limnology and
Oceanography 18, 681-683.
}
\seealso{
\code{\link{ts.schmidt.stability}} \code{\link{lake.number}}
\code{\link{wedderburn.number}}
}
\keyword{arith}
