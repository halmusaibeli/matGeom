function out = keeper(poly,plane,varargin)
% slices polygon and keeps ether the upper or the bottom part of it deponds
% on the *varargin
    if isequal(varargin,"above") || isequal(varargin,"ABOVE")
            out = ~isBelowPlane(poly,plane);
    elseif isequal(varargin,"below") || isequal(varargin,"BELOW")
            out = isBelowPlane(poly,plane);
        else
            sprintf("error: outpot polygon not specified ('above' | 'below')")
            return;
    end
end

