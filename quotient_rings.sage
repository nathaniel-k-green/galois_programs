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
Z_pX_f = Z_pX.quotient(I)

# element of our quotient ring
alpha = Z_pX_f(X)

def print_vals(alpha, my_range):
    print(f"printing powers of alpha = {alpha} from {min(my_range)} to {max(my_range)}")
    for i in my_range:
        print(f"alpha^{i} = {alpha^i}")


# printing powers of alpha
print("#################################")
print(f"p = {p}")
print(f"polynomial ring = Z_{p}[X]")
print(f"Ideal = <{f}>")
print(f"alpha = {alpha} + <{f}>")
print("#################################")
print_vals(alpha, range(1,16))
