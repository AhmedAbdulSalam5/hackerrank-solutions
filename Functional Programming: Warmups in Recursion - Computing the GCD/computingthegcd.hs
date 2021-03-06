module Main where


gcd' :: Integral a => a -> a -> a
gcd' x y | x > y = gcd' (x-y) y | x < y = gcd' x (y-x) | x == y = x -- Complete this function


-- This part is related to the Input/Output and can be used as it is
-- Do not modify it
main = do
  input <- getLine
  print . uncurry gcd' . listToTuple . convertToInt . words $ input
 where
  listToTuple (x:xs:_) = (x,xs)
  convertToInt = map (read :: String -> Int)
