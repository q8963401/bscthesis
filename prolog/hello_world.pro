and(A,B)    :- A,B.
or(A,B)     :- A;B.
nand(A,B)   :- not(and(A,B)).
nor(A,B)    :- not(or(A,B)).
xor(A,B)    :- or(A,B), nand(A,B).

evaluate(E, true) :- E, !.
evaluate(_, false).

bool(true).
bool(false).

truthTable(A,B,E) :-
  bool(A),
  bool(B),
  write(A),
  write(' \t '),
  write(B),
  write(' \t '),
  evaluate(E, Result),
  write(Result),nl, fail.

?- truthTable(A,B,not(and(not(A),B))).