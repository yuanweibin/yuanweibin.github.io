clear; clc;

%1000mm*20mm plate, one long edge is 100degree, other three edge are
%20degree

%heat equation: grad(div(theta)) = 0

%set parameter
w = 1.8; % 0 <= w <= 2


%set delta
delta_x = 0.5; %mm
delta_y = 0.5; %mm
beta = delta_x/delta_y;

%set edge
l_edge = 100; %mm
s_edge = 20;  %mm

%b.c.
l_edge_theta1 = 100;
l_edge_theta2 = 20; 
s_edge_theta1 = 20; 
s_edge_theta2 = 20; 

nx = (l_edge/delta_x) + 1;
ny = (s_edge/delta_y) + 1;

%initial theta
theta = s_edge_theta1 * ones(nx,ny);

theta(1, :) = s_edge_theta1;
theta(nx,:) = s_edge_theta2;

theta(:, 1) = l_edge_theta1;
theta(:,ny) = s_edge_theta2;

x = 0:delta_x:l_edge;
y = 0:delta_y:s_edge;

step = 0;

step0 = 10000;

%for w = 0.01:0.01:1.99
    
    %initial theta
    theta = s_edge_theta1 * ones(nx,ny);

    theta(1, :) = s_edge_theta1;
    theta(nx,:) = s_edge_theta2;

    theta(:, 1) = l_edge_theta1;
    theta(:,ny) = s_edge_theta2;
    
    theta_m = theta;
    
    while true
        for i = 2:1:(nx-1)
            for j = 2:1:(ny-1)
                theta_m(i,j) = (1-w) * theta(i,j) + w * (1/(2*(1+beta^2))) * ...,
                           (theta(i+1,j) + theta_m(i-1,j) + beta^2 * (theta(i,j+1) + theta_m(i,j-1)));
            %theta_m(i,j) = 0.25*(theta(i+1,j) + theta_m(i-1,j) + theta(i,j+1) + theta_m(i,j-1));
            end
        end
    
        step = step + 1;
        step,max(max(abs(theta_m - theta)))
        if max(max(abs(theta_m - theta))) < 0.1; break; end
    
        theta = theta_m;
    end
    
    if (step < step0)
        step0 = step;
        w_opt = w;
    end
    
    step = 0;
%end


contour(y,x,theta,'ShowText','on');
xlabel('¶Ì±ß')
ylabel('³¤±ß')