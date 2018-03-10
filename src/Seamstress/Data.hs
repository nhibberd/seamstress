{-# LANGUAGE RankNTypes #-}
module Seamstress.Data (
    Label(..)
  , Handler(..)
  , Supervise(..)
  ) where

import           Data.Text (Text)

newtype Label =
  Label {
      label :: Text
    } deriving (Eq, Show)

data Handler =
    Terminate
  | RestartForever
  | Restart Int
    deriving (Eq, Show)

data Supervise a =
  Supervise {
      superviseLabel :: Label
    , superviseHandler :: Handler
    , superviseAction :: a
    }
