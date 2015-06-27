module Max where

import Data.List
import System.Environment
import System.Exit


tryRead :: (Read a) => String -> Maybe a
tryRead str = case reads str of
    [(val, "")] -> Just val
    _ -> Nothing


main = do
    args <- getArgs
    let mNums = mapM tryRead args
    case mNums of
        Nothing -> exitFailure
        Just nums -> print $ maximum $ nums `asTypeOf` [0::Integer]


