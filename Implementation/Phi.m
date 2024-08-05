% This function is used to generate the Phi matrix as described in the
% report.

function m = Phi(x,K)
% Arguement x is the vector of data for which this matrix is calculated.

temp = zeros(size(x,2),(2*K+1));

    for r = 1:size(x,2)
        for k = 1:K+1
            temp(r,k) = cos((k-1)*x(r));
        end

        for l = K+2:(2*K+1)
            temp(r,l) = sin((l-K-1)*x(r));
        end
    end

m = temp;

end