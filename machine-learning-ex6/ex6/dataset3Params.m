function [C, sigma] = dataset3Params(X, y, Xval, yval)
%DATASET3PARAMS returns your choice o f C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = DATASET3PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1;
sigma = 0.1;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%
Cs = [1,2,4,8,16,32,64];
sigmas = [0.01,0.03,0.07,0.1,0.3,1];
validation=[];
i=0;
for C1 = Cs
  for sigma1 = sigmas
    %model= svmTrain(X, y, C1, @(x1, x2) gaussianKernel(x1, x2, sigma1)); 
    %predictions = svmPredict(model, Xval);
    %validation = [validation;mean(double(predictions ~= yval))];
    %i=i+1
  endfor
endfor
%size(validation)
[~,idx] = min(validation);



% =========================================================================

end
