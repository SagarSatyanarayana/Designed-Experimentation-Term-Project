DATA pro
title1 'Design';
input Ethnicity DiabeticHistory$ Weight @@;
datalines;
1 A 80.25 1 B 94.57 1 C 88.21
2 A 82.25 2 B 92.41 2 C 88.46
3 A 67.16 3 B 71.86 3 C 70.36
4 A 77.66 4 B 84.23 4 C 80.18
;
proc print;

PROC anova data=pro;
title2 'ANOVA';
Class Ethnicity DiabeticHistory Weight;
Model Weight= Ethnicity DiabeticHistory;
run;
