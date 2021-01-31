# Deliverable 1

library(dplyr)
library(tidyselect)
MechaCar_table <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table) #generate multiple linear regression model
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechaCar_table))

plt <- ggplot(MechaCar_table,aes(x=vehicle_length,y=mpg)) #plot vehicle length vs mpg
plt + geom_point() + geom_line(aes(y=mpg), color = "red") #plot scatter and linear model

plt <- ggplot(MechaCar_table,aes(x=vehicle_weight,y=mpg)) #plot vehicle weight vs mpg
plt + geom_point() + geom_line(aes(y=mpg), color = "red") #plot scatter and linear model

plt <- ggplot(MechaCar_table,aes(x=spoiler_angle,y=mpg)) #plot spoiler angle vs mpg
plt + geom_point() + geom_line(aes(y=mpg), color = "red") #plot scatter and linear model

plt <- ggplot(MechaCar_table,aes(x=ground_clearance,y=mpg)) #plot ground clearance vs mpg
plt + geom_point() + geom_line(aes(y=mpg), color = "red") #plot scatter and linear model

plt <- ggplot(MechaCar_table,aes(x=AWD,y=mpg)) #plot AWD vs mpg
plt + geom_point() + geom_line(aes(y=mpg), color = "red") #plot scatter and linear model
# Deliverable 2
Suspension_Coils_Table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)


total_summary <- Suspension_Coils_Table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table
lot_summary <- Suspension_Coils_Table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep') #create summary table

# Deliverable 3

t.test((Suspension_Coils_Table$PSI),mu=mean(1500)) #compare population versus mean of 1500

lot1_coils <- subset(Suspension_Coils_Table, Manufacturing_Lot == 'Lot1') #create subset lot1 psi
t.test((lot1_coils$PSI),mu=mean(Suspension_Coils_Table$PSI)) #compare Lot1 versus population means

lot2_coils <- subset(Suspension_Coils_Table, Manufacturing_Lot == 'Lot2') #create subset lot2 psi
t.test((lot2_coils$PSI),mu=mean(Suspension_Coils_Table$PSI)) #compare Lot2 versus population means

lot3_coils <- subset(Suspension_Coils_Table, Manufacturing_Lot == 'Lot3') #create subset lot3 psi
t.test((lot3_coils$PSI),mu=mean(Suspension_Coils_Table$PSI)) #compare Lot3 versus population means
