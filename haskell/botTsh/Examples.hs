{-# LANGUAGE
    DeriveFunctor
  , OverloadedStrings
  , FlexibleContexts
  , TypeFamilies
  , QuasiQuotes
#-}
{-# OPTIONS_GHC -freduction-depth=4096 #-}


module Examples where

import Csound.Base ( Sig, Sig2, Sco, Mix, D, Track           -- Basics.
                   , eff, mul, mix, dac                      -- Rendering
                   , sco, har, mel, rest, temp, str, loopBy  -- From Temporal.Media.
                   , cave                                    -- A line for fsx.
                   )

import BottomTsh
import BottomTshParser
import Control.Shell

part1 =
  [botTsh|
     hhc <- (  2,2) { f 8 f 8 f 8 f 8 },
     sd  <- (    2) { .   f   .   f   },
     bd  <- (    4) { f . . . . f . . }
   |]

main = runGroove 240 part1
