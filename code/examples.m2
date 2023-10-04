-- 10/02/2023
needsPackage "Truncations"

k = ZZ/101
S = k[x,y,z]

X = Proj S -- PP^2
E = OO_X^1(3)
sheaf(X, module E)

E = sheaf S^1
E' = sheaf truncate(3, S^1)

end--
restart
needs "example2.m2"

errorDepth=1
HH^0 E'(>=0)

0 -> H^0_m(M) -> M -> Gamma_* F -> H^1_m(M) -> 0



prune E'
HH^0 E'
code methods(prune, CoherentSheaf)
cohomology(0, E'(>=0))
code methods(cohomology, class E'(>=0))
code globalSectionsModule



needsPackage "SheafMaps"

f = sheafMap truncate(3, vars S)
prune f
code(prune, SheafMap)
F = sheaf truncate(3, S^1)
prune F
F.cache.SaturationMap
source oo
target ooo



---
needsPackage "NormalToricVarieties"



needs "~/papers/code/HHL.m2"

