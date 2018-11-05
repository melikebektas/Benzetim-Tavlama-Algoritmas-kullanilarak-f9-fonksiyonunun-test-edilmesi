n = 30; 
f = @(x) sum(x.^2-10*cos(2*pi.*x))+10*n; %f9 fonksiyonu
R= zeros(31,1);
C=[];
C= [C R];
xlswrite('satest10.xlsx',C);  %sonuçlarýmýzý excelle kaydettik
for i=1:30
     C= xlsread('satest10.xlsx');
    x0=-5.12+rand(30,1)*10.24;
    options = saoptimset('InitialTemperature',100);
    [x,fval,exitflag,output]=simulannealbnd(f,x0,-5.12,5.12,options);
    R=[x;fval];
    C= [C R];
    xlswrite('satest10.xlsx',C);
end

