% Creates a 1d gaussian distribution
%
% y = gaussDist(x,mu,sigma)
%
% INPUTS      x : The array over which to calculate the gaussian distribution
%            mu : The mean of the gaussian
%         sigma : the standard deviation of the gaussian
%
% OUTPUTS     y : Gaussian over x with mean mu and standard deviation sigma
%
% Created by Daniel Seara at 2017/03/18 23:18\
function y = gaussDist(x,mu,sigma)
    
    switch nargin
    case 0
        help gaussDist
        return
    end

    norm = (2*pi*sigma.^2)^(-1/2);
    y = norm .* exp(-x.^2./(2*sigma^2));