module JobHandler where

import           Core
import           RIO

data Job = Job {
        pipeline :: Pipeline,
        state    :: JobState
    }
    deriving (Eq, Show)

data JobState
    = JobQueued
    | JobAssigned
    | JobScheduled Build
    deriving (Eq, Show)

