function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    % Iteration Implementation
    % number-of-thetas = length(theta);
    % new_theta = zeros(number-of-thetas,1);
    % for j = 1:number-of-thetas
    %   sum-of-pred-devi = 0;
    %   for i = 1:m
    %   %h(x)=X*theta
    %   hx = X(i,:) * theta;
    %   predic-deviation = (hx - y(i,:))*X(i,j);
    %   sum-of-pred-devi = sum-of-pred-devi + predic-deviation;
    % end
    % new_theta(j) = theta(j) - (alpha/m) * sum-of-pred-devi;
    % end
    % theta = new_theta;
    
    
    % Vectorized implementation 
    derivate = (X'*(X*theta - y))/m;
    theta = theta - alpha*derivate;
    
    






    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
