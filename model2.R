
# Fill here the code to estimate the linear_model2 from the notebook
p <- mean(db_int$leverage)
p

cutt <- 3*p
cutt

db_int2 <-  db_int %>% 
  dplyr:: filter(leverage<= cutt)

# re run the model
linear_model2<- lm(totalHoursWorked ~ ofic_ingLab + nmenores  +  nmenores*gender + H_Head + age + gender, data=db_int2  )


stargazer(linear_model, linear_model2, type="text",
          covariate.labels=c("Mean Ocu Income","N under 18","Male",
                             "Hausehold Head","Age", "N under 18 x Male" ))
