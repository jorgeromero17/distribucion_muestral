set.seed(123) 

media_poblacion <- 1.65
desviacion_poblacion <- 0.23

poblacion <- rnorm(50000, media_poblacion, desviacion_poblacion)

n_muestras <- 10000
tamano_muestra <- 18
medias_muestrales <- replicate(n_muestras, mean(sample(poblacion, tamano_muestra, TRUE)))

mean(medias_muestrales)
sd(medias_muestrales)

sum(medias_muestrales > 1.78) / length(medias_muestrales)

hist(medias_muestrales, main = "Distribución muestral de la media", xlab = "Media muestral", col = "#009999")