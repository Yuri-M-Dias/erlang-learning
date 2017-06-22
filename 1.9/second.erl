-module(second).
-export(
   [
	hypotenuse/2,
	perimeter/2,
	area/2
   ]
  ).

hypotenuse(A,B) ->
	SUM = first:square(A) + first:square(B),
	math:sqrt(SUM).

perimeter(A,B) ->
	C = hypotenuse(A,B),
	A + B + C.

area(A,B) ->
	first:mult(A,B) / 2.
