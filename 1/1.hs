import System.IO
import Data.List.Split
import Data.Sort
  
main :: IO ()
main = do     
    line <- getContents
    let list = formatInput line
    print $ getTop3Max (listOfStringToListOfInt list)

formatInput :: String -> [[String]]
formatInput input = map words (splitOn "\n\n" input)

listOfStringToListOfInt :: [[String]] -> [[Int]]
listOfStringToListOfInt list =  map (map (read::String->Int)) list

getTop3Max :: [[Int]] -> Int
getTop3Max list = sum $ take 3 (sortList (sumListOfInts list))

sortList :: [Int] -> [Int]
sortList list = reverse (sort list)

sumListOfInts :: [[Int]] -> [Int]
sumListOfInts ints = map sum ints


