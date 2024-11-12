# Nathaniel Green
# Galois theory programs 
# Fall, 2024

# variable
var('X') 

# prime number
p = 2
Z_p = Integers(p)
Z_pX = PolynomialRing(Z_p, 'X')

# polynomial to create our quotient ring with
f = Z_pX(X^4+X+1)
I = ideal(Z_pX, f)
Q = Z_pX.quotient(I)

# element of our quotient ring
alpha = Q(X)

def print_vals(alpha, rnge):
    for i in rnge:
        print(f"alpha^{i} = {alpha^i}")


# printing powers of alpha
print_vals(alpha, range(1,16))
