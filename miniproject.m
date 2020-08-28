
X =[20;25;30;35;40;42;44;46;48;50;52;54;56;58;60];
y =[0.37 0.45 0.51 0.53 0.56 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68];
y=y';
m=length(y);
X=[X.*X.*X X.*X  X 10000*ones(m,1) ones(m,1)];
alpha = 0.00000000002;
num_iters = 1000000;
J_history = zeros(num_iters, 1);
theta = zeros(5, 1);
for iter = 1:num_iters
theta = theta - alpha * (1/m) * (((X*theta) - y)' * X)';
J_history(iter) = computeCostMulti(X, y, theta);
end