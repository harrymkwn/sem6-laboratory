replace(A,B,[],[]).
replace(A,B,[H|T],D):-
	B=H,
	!,
	replace(A,B,T,D2),
	D=[A|D2].
replace(A,B,[H|T],D):-
	replace(A,B,T,D2),
	D=[H|D2].