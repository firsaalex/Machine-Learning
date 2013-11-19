regParJ=0;
theta = ones(1,28);
for i = 2: length(theta)
     regParJ = regParJ + power(theta(i),2);
     regParDJ(i) = theta(i); 
end

 
b = 3*[0 theta(2:end)];