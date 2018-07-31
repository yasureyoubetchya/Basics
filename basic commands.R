getwd()

# read chronology .crn file
data=read.crn(
  'https://www1.ncdc.noaa.gov/pub/data/paleo/treering/chronologies/europe/norw007.crn'
)

crn.plot(data)

m <- morlet(data$KARASJ, x1 = seq_along(data$KARASJ))
m2 <- wavelet.plot(m)
