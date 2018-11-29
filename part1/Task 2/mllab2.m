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

%predict house 
p_1 =  (1650 - mean_vec(1))/std_vec(1);
r_1 = (3 - mean_vec(1))/std_vec(1);

a_1 =  (3000 - mean_vec(1))/std_vec(1);
b_1 = (4 - mean_vec(1))/std_vec(1);

%predict value

q_1 = t(1)+p_1*t(2)+r_1*t(2);

z_1 = t(1)+a_1*t(2)+b_1*t(2);



