function t = exercicio1(func,func_d,x0)

% nao alterar: inicio
es = 0.01;
imax = 20;
% nao alterar: fim

%%%%%%%%%%%%%%%%%%%%%%%%%%

t = zeros(imax,1);
t(1)= x0;
erro = zeros(length(t),1);

for ii = 1:length(t_roots)-1
    if ii ~= 1
      erro(ii) = abs((t(ii)-t(ii-1))/t(ii));
        if erro(ii)<es
            break
        endif
    endif
    t(ii+1) = t(ii) - func(t(ii))/func_d(t(ii));
endfor
t=t(ii)

%%%%%%%%%%%%%%%%%%%%%%%%%%

endfunction
