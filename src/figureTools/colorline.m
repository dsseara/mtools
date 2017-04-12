function [] = colorline(x,y,col)
% Creates a 2d line that varies it's color as it is plotted. 
% Accepts column vectors
%
% INPUTS :  x,y - Nx1 vectors, same as plot(x,y)
%           col - vector of same size as x and y that containing the data
%                 numbers you want the numbers to vary by
%
% OUTPUTS: A 2D line plot
%
% Created by Daniel Seara at 2017/03/07 16:23

if size(x,1)<size(x,2)
    x = [x]';
end
if size(y,1)<size(y,2)
    y = [y]';
end
if size(col,1)<size(col,2)
    col = [col]';
end

z = zeros(size(x));

surface([x,x], [y,y], [z,z], [col,col],...
        'facecol','no',...
        'edgecol','interp',...
        'linew',2);