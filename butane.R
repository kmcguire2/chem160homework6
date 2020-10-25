Vbar = 3.0    #volume per mole (L/mole)
T = 370       #temperature (K)
a =  16.44    #(bar L^2 / mole^2)
b = 0.07245   #(L/mole)
R = 0.083145  #gas constant (bar L / K mole)

P1 = R*T/Vbar #pressure, ideal gas law
P2 = (R*T/(Vbar-b)) - (a/(Vbar*(Vbar+b)+b*(Vbar-b)))  #pressure, Peng-Robinson

cat(P1, P2, "\n") #prints result
