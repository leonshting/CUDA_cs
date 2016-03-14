
import System.Random

closest :: Integral a => a -> a -> a
closest xc freq =
        if (xc 'mod' freq) > freq/2
        then freq - xc 'mod' freq
        else xc 'mod' freq

ifintersect :: Integral a, Bool b => (a, a) -> a -> b
ifintersect (x1,x2) freq =
    if ((closest x1 freq) - abs x2 ) > 0
    then False
    else True

to_iter :: Bool b, Int a => b ->(a, a) -> (a, a)
to_iter b (a,c) =
    if b
    then (a+1, c+1)
    else (a, c+1)


process ::(Int, Int) -> Double
process (a,b) = a/b

main = do

    (to_iter (ifintersect $ 0.1) (0,0)) take 10000 [(i,j)| i<-randomRs ((-1.0, 1.0) :: (Double, Double)) (mkStdGen 41))| j<-randomRs ((-50.0, 50.0) :: (Double, Double)) (mkStdGen 42))]

