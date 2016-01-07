# function leap year

is.leap <- function(year){
	if(!is.numeric(year)) {
		stop("argument of class numeric expected")
	}
	ifelse(year <= 1582,
				paste(year, "is out of the valid range"), 
				ifelse(year %% 4 != 0, 
							 paste("FALSE"), 
							 ifelse(year %% 100 == 0, 
							 			 paste("TRUE"), 
							 			 ifelse(year %% 400 != 0, 
							 			 			 paste("FALSE"), 
							 			 			 paste("TRUE")))))

}