# MechaCar_Statistical_Analysis
AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has asked for a review of the production data for insights that may help the manufacturing team.

The goal of this effort is to utilize data analytics to do the following:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. 

## Technology Involved
The technology utilized to accomplisth the above deliverables is the "R" programming language from within RStudio.

## Linear Regression to Predict MPG
The first set of production data is a listing of 50 different prototypes of the MechaCar.  The following is a representation of the data contained in the table:
![MechaCar_MPG Table](Resources/MechaCar_Table_1.png)

Linear Regressions show the relationship between a dependent variable and one or more independent variables.  The dependent variable in this case is miles per gallon (MPG) or the fuel efficiency of the MechaCar prototypes.  Independent variables that could have some impact on MPG are vehicle length, vehicle weight, the angle of the spoiler, ground clearance and drive train (AWD or not).  The linear regression predicts whether or not any of these independent variables could cause increase or decrease in MPG.
![Vehicle Length](Resources/Rplot.png)
![Vehicle Weight](Resources/Rplot01.png)
![Spoiler Angle](Resources/Rplot02.png)
![Ground Clearance](Resources/Rplot03.png)
![AWD](Resources/Rplot04.png)
![Linear Regression to Predict MPG](Resources/Linear_Regression_1.png)

According to the above plots for visual reference and Linear Regression output of our linear regression test, the following independent variables provided significant non-random amount of variance to the mpg values in the dataset:
* vehicle length
* ground clearance

Note:  vehicle weight also likely has some impact, but the significance is only slight.

The following independent variables did not show non-random effect on MPG:
* Spoiler Angle
* AWD

* Is the slope of the linear model considered to be zero? Why or why not?
* Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

## Summary Statistics on Suspension Coils

[Coils_Table](Resources/Suspension_Coils_Table.png)

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

![Total_Summary](Resources/Total_Summary.png)

![Lot_Summary](Resources/Lot_Summary.png)

## T-Tests on Suspension Coils
![Lot1_T.Test](Resources/Lot1_t_test.png)
![Lot2_T.Test](Resources/Lot2_t_test.png)
![Lot3_T.Test](Resources/Lot3_t_test.png)

briefly summarize your interpretation and findings for the t-test results.

## Study Design: MechaCar vs Competition
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.
In your description, address the following questions:
What metric or metrics are you going to test?
What is the null hypothesis or alternative hypothesis?
What statistical test would you use to test the hypothesis? And why?
What data is needed to run the statistical test?