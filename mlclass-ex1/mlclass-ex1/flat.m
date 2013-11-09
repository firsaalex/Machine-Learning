clc;
%% ================ Part 3: Normal Equations ================

fprintf('Solving with normal equations...\n');

% ====================== YOUR CODE HERE ======================
% Instructions: The following code computes the closed form 
%               solution for linear regression using the normal
%               equations. You should complete the code in 
%               normalEqn.m
%
%               After doing so, you should complete this code 
%               to predict the price of a 1650 sq-ft, 3 br house.
%

%% Load Data
data = csvread('flat.txt');
X = data(:, 1:4);
y = data(:, 5);
m = length(y);

% Add intercept term to X
X = [ones(m, 1) X];

% Calculate the parameters from the normal equation
theta = normalEqn(X, y);

% Estimate the price of a 1650 sq-ft, 3 br house
% ====================== YOUR CODE HERE ======================
priceMy = [1 1 8 11.75 6]*theta;
% ============================================================
     
fprintf('My price: %f rub\n', priceMy*1000);


%% plotting
data = load('flat.txt');
X = data(:, 3); y = data(:, 5);
m = length(y); % number of training examples

% Plot Data
% Note: You have to complete the code in plotData.m
plotData(X, y);


%% Load Data
data = csvread('flat.txt');
X = data(:, 3);
y = data(:, 5);
m = length(y);

% Add intercept term to X
X = [ones(m, 1) X];

% Calculate the parameters from the normal equation
theta = normalEqn(X, y);


% Estimate the price of a 1650 sq-ft, 3 br house
% ====================== YOUR CODE HERE ======================
priceMy = [1 11.75]*theta;
% ============================================================
     
fprintf('My price(just area): %f rub\n', priceMy*1000);
% Plot the linear fit
hold on; % keep previous plot visible
plot(X(:,2), X*theta, '-')
legend('Training data ', 'Linear regression')
hold off % don't overlay any more plots on this figure

