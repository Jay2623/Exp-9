1 % Define the function
2 function y = f(x)
3 y = (cos(x) - x) / (1 + x);
4 end
5
6 % Set the limits of integration 7 a = 0;
8 b = 1;
9
10 % Set the number of steps
11 n = 6;
12
13 % Calculate the width of each step 14 h = (b - a) / n;
15
16 % Initialize the sum for the trapezoidal rule
17 sum = 0;
18
19 % Calculate the first and last term (f(a) and f(b))
20 sum = sum + f(a) + f(b);
21
22 % Calculate the sum of the function values at interior points 23 for i = 1:n-1
24 x = a + i*h;
25   sum = sum + 2*f(x);
26 end
27
28 % Apply the trapezoidal rule formula
29 integral = h/2 * sum;
30
31 % Print the result
32 fprintf('The integral using the trapezoidal rule is: %f\n',integral); 33
34 % Define the function
35 function y = g(x)
36 y = (cos(x) - x) / (1 + x);
37 end
38
39 % Set the limits of integration
40 a = 0;
41 b = 1;
42
43 % Set the number of steps
44 n = 2;
45
46 % Calculate the width of each step
47 h = (b - a) / n;
48
49 % Initialize the sum for the trapezoidal rule

23/4/24 5:12 PM C:\Users\chait\OneDrive\De...\Question.m 2 of 3
  50 sum = 0;
51
52 % Calculate the first and last term (f(a) and f(b))
53 sum = sum + f(a) + f(b);
54
55 % Calculate the sum of the function values at interior points 56 for i = 1:n-1
57 x=a+i*h;
58 sum=sum+2*f(x);
59 end
60
61 % Apply the trapezoidal rule formula
62 integral = h / 2 * sum;
63
64 % Print the result
65 fprintf('The integral using the trapezoidal rule with n=2 is: %f\n', integral); 66
67 % Define the function
68 function y = w(x)
69 y = (cos(x) - x) / (1 + x);
70 end
71
72 % Set the limits of integration
73 a = 0;
74 b = 1;
75
76 % Set the number of intervals (Simpson's 1/3 rule needs an even number, here n=2
for one segment)
77 n = 2;
78
79 % Calculate the width of each interval
80 h = (b - a) / n;
81
82 % Initialize the variables for the sum using Simpson's 1/3 rule
83 fa = f(a);
84 fb = f(b);
85 fm = f((a + b) / 2); % Midpoint evaluation
86
87 % Apply Simpson's 1/3 rule formula
88 integral = (h / 3) * (fa + 4*fm + fb);
89
90 % Print the result
91 fprintf('The integral using Simpson''s 1/3 rule is: %f\n', integral); 92
93 % Define the function
94 function y = s(x)
95 y = (cos(x) - x) / (1 + x);
96 end
97

23/4/24 5:12 PM C:\Users\chait\OneDrive\De...\Question.m 3 of 3
  98 % Set the limits of integration
99 a = 0;
100 b = 1;
101
102 % Set the number of intervals
103 n = 3; % Simpson's 3/8 rule uses 3 intervals 104
105 % Calculate the width of each interval
106 h = (b - a) / n;
107
108 % Calculate the values at the four points needed for Simpson's 3/8 rule 109 f0 = f(a);
110 f1 = f(a + h);
111 f2 = f(a + 2*h);
112 f3 = f(b);
113
114 % Apply Simpson's 3/8 rule formula
115 integral = (3 * h / 8) * (f0 + 3*f1 + 3*f2 + f3);
116
117 % Print the result
118 fprintf('The integral using Simpson''s 3/8 rule is: %f\n', integral);