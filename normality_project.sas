DATA norm;
Title1 'Normality Test';
input val @@;
cards;
80.25
82.25
67.16
77.66
94.57
92.41
71.86
84.23
88.21
88.46
70.36
80.18
;
proc univariate data=norm normal;
qqplot val/Normal ( mu=est sigma=est color=red l=1);
run;
