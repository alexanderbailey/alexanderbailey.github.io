# Calculate exponential equation a_n^C(FS_r)
# given F = [ f_1, f_2, f_3, ...  , f_n ] where f_k is the number of Cayley tables on [1..n] generated ascendingly by [1..k]

H:=[];
for j in [1..Size(F)] do;
  Add(H,Sum([j..Size(F)],k->(-1)^(k-j)*Binomial(k,j)*F[k]/Factorial(k)));
od;
for j in [1..Size(F)-1] do;
  Print("(",H[Size(F)-j+1],") ",Size(F)-j+1,"^r + ");
od;
Print("(",H[1],")");
