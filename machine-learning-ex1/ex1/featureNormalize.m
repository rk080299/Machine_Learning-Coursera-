function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

% You need to set these values correctly
X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

mu = mean(X);

sigma = std(X);

for i = 1:size(X,2)
  if(sigma(i)!=0)
    for j = 1:size(X,1)
      X_norm(j,i) = (X(j,i)-mu(i))/sigma(i) ;
    end
  else
     X_norm(:, i) = zeros(size(X, 1), 1);
 end
 end