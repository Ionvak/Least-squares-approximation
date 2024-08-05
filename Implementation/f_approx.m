% Function used for least-squares approximation of f(x).


function y_approx = f_approx(x,p)
% Arguement x is the vector of data for which the function is assessd.
% p is the vector of parameters used in the function.

K = (size(p,1)-1)/2;
X = size(x,2);
temp = zeros(1,X);

for i = 1:X
total = p(1);
    for k = 1:K
        total = total + p(k+1)*cos(k*x(i)) + p(k+1+K)*sin(k*x(i));
    end 
temp(1,i) = total;
end

y_approx = temp;

end