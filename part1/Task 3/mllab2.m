%% This loads our data
[X, y] = load_data_ex2();

%% Normalise and initialize.
[X, mean_vec, std_vec] = normalise_features(X);

%after normalising we add the bias
X = [ones(size(X, 1), 1), X];

%initialise theta
theta = [0.0, 0.0, 0.0];
alpha = 0.1;
iterations = 100;

%% 
t = gradient_descent(X, y, theta, alpha, iterations);
disp 'Press enter to exit!';
pause;

%Predict the house price with 1650 sq ft and 3 bed room 

sq = (1650 -mean_vec(1))/std_vec(1);
nr = (3 -mean_vec(2))/std_vec(2);

%print out predict price  
h_1 = t(1)+sq*t(2)+nr*t(3);

%Predict the house price with 3000 sq ft and 4 bed room  

sq_2 = (3000 -mean_vec(1))/std_vec(1);
nr_2 = (4 -mean_vec(2))/std_vec(2);

%print out predict price  
h_2 = t(1)+sq_2*t(2)+nr_2*t(3);

%************************************************************************************************%