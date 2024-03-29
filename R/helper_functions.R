
require(dplyr)
require(tidyr)
require(ggplot2)

# cut has a bug with frontier values sometimes
cut_ <- function(x, breaks){
  breaks <- sort(unique(breaks))
  mins <- breaks[-length(breaks)]
  maxs <- breaks[-1]
  out <- sapply(x, function(y){
    cond <- which(y > mins & y <= maxs)
    ifelse(length(cond) == 0,
           NA,
           cond)
  })
  factor(out,
         levels = 1:(length(breaks) - 1),
         labels = sprintf('(%.2f,%.2f]', mins, maxs))
}

qcut <- function(x, g=10){
  if(!is.numeric(g) || g <= 0) stop("g should be a positive integer.")
  if(is.factor(x)){
    warning("Converting factor to numeric.")
    x <- as.numeric(x)
  }
  percentages <- seq(1/g, 1-(1/g), l=g-1)
  qq <- quantile(x, percentages)
  y <- cut_(x,
           breaks=c(-Inf,
                    unique(qq),
                    Inf))
  list(
    x = y,
    percentages = c(round(percentages, 3), 1)
  )
}
