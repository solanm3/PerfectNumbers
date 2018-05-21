/* Check if Number Even and Positive */

posEven(N) :- 0 is N mod 2, N > 0.

/* Determine Divisors */

factorList(N , FL) :- posEven(N) , !,
setof( F , ( between(1, N, F) , N mod F =:= 0, N / F > 1 ) ,  FL ).


/* Sum List  */

sumList([], 0) :- !.
sumList([H|T], Sum):- sumList(T, Sum1), Sum is H + Sum1.


/* Check sum of List against input */

perfect(N) :- factorList(N, FL), sumList(FL, N).
