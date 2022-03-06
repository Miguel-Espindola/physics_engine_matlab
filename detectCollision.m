function [collision,v] = detectCollision(p1,v1,p2,v2)
    switch nargin
        case 1
            error('not enough input arguments, maybe velocity or polyshape missing')
        case 2
            if class(p1) == "circle"
                %% pasar a la funcion colision circle vs cirle
                [collision,v] = circlevscircle(p1,v1);
            else
                % pasar a la funcion poligono vs poligonoS
                disp('poligono vs poligono')
            end
        case 3
            error('not enough input arguments, maybe velocity or polyshape missing')
        case 4
            if class(p1) == "circle" && class(p2) == "circle"
                %% pasar a la funcion colision circle vs cirle
                collision = circlevscircle(p1,v1,p2,v2);
            elseif class(p1) == "circle" || class(p2) == "circle"
                %% pasar a la funcion poligono vs circle
                disp('circulo vs poligono')
            else
                % pasar a la funcion poligono vs poligonoS
                disp('poligono vs poligono')
            end
    end

end
