import System.IO
import Data.List.Split
  
main :: IO ()
main = do     
    line <- getContents
    let list = formatInput line
    print $ getMax (listOfStringToListOfInt list)

formatInput :: String -> [[String]]
formatInput input = map words (splitOn "\n\n" input)

listOfStringToListOfInt :: [[String]] -> [[Int]]
listOfStringToListOfInt list =  map (map (read::String->Int)) list

getMax :: [[Int]] -> Int
getMax list = maximum (map sum list)

