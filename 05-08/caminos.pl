﻿% camino (+G, +Ini, +Fin, +Visitados, -Camino)

camino(_, Ini, Ini, _, [Ini]).
camino(g(_, A), Ini, Fin, Visitados, [Ini|Camino]):- 
	member(a(Ini, TMP), A), \+ member(TMP, Visitados), 
	camino(g(_, A), TMP, Fin, [TMP|Visitados], Camino).


grafo(g([a, b, c, d], [a(a, b), a(b, c), a(c, d), a(d, b)])).