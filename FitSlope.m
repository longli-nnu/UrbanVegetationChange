clear;clc;
fit=xlsread('C:\Users\lilong\Desktop\data.xlsx');
fit=fit';
[m,n,L]=size(fit);
new=zeros(4,n);

x=[1:23]';

for i=1:n
    Y=fit(4:26,i);
    X=[ones(length(x),1) x];
    [b bint r rint stats]=regress(Y,X);
    new(1,i)=fit(2,i); % Longitude
    new(2,i)=fit(3,i); % Latitude
    new(3,i)=b(2); % Slope
    new(4,i)=stats(3); % p
    i
end
new=new';

xlswrite('C:\Users\lilong\Desktop\\Slope.xlsx',new);