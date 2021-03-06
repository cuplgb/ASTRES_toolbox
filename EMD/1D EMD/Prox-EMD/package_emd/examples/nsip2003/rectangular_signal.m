% TRIANG.M
%
% P. Flandrin, Mar. 13, 2003
%
% generates a triangular waveform
%
% inputs :   - N : # of data samples
%            - p : period
%
% output :   - x : signal

function x = rectangular_signal(N,p);

x = zeros(1,N);
tmp=1;
for i=1:N
    if mod(i,p)==0
        x(i:i+p-1) = tmp;
        i = i+p;
        if tmp==1
            tmp=0;
        else
            tmp=1;
        end
    end
end
x = x(1:N);