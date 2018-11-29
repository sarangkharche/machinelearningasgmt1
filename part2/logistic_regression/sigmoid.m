function output=sigmoid(z)
    %output = 0;
    % modify this to return z passed through the sigmoid function
    %%%%%%%%%%%%%%%%%%%%%%%%
    
    %%%%%%%%%%%%%%%%%%%%%%%%
    output = zeros(size(z));
    output = 1 ./ (1 + exp(-z));
    
end  
%END OF FUNCTION


