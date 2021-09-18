SN=socialnetwork;
age = SN.Age;
age = (age-mean(age))/std(age);
Gen = SN.Gender;
salary = SN.EstimatedSalary;
salary = (salary - mean(salary))/std(salary);
Gender = double(Gen);

SN_final = [Gender age salary SN.Purchased];
[center,final] = fcm(SN_final, 7,[5,1000]);
center;
sum(final,1);