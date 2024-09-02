{-# LANGUAGE CPP, MultiParamTypeClasses, FunctionalDependencies, FlexibleInstances #-}
module Data.Tuple.Sequence where
import Data.Tuple
import Control.Monad

-- | Tuple sequencing, i.e., take a tuple of of monadic actions and do them from left-to-right,
-- returning the resulting tuple.
class SequenceT a b | a -> b where
    sequenceT :: a -> b

#if MIN_VERSION_base(4,18,0)
instance Monad m => SequenceT (Solo (m a)) (m (Solo a)) where
    sequenceT (MkSolo a) = return MkSolo `ap` a
#else
instance Monad m => SequenceT (Solo (m a)) (m (Solo a)) where
    sequenceT (Solo a) = return Solo `ap` a
#endif

--snip-----------------
---- Machine generated code below, see Tools/MkTuple.hs
---- mkTuple sequence 32
instance (Monad m) => SequenceT (m a1,m a2) (m (a1,a2)) where sequenceT (a1,a2) = return (,) `ap` a1 `ap` a2
instance (Monad m) => SequenceT (m a1,m a2,m a3) (m (a1,a2,a3)) where sequenceT (a1,a2,a3) = return (,,) `ap` a1 `ap` a2 `ap` a3
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4) (m (a1,a2,a3,a4)) where sequenceT (a1,a2,a3,a4) = return (,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5) (m (a1,a2,a3,a4,a5)) where sequenceT (a1,a2,a3,a4,a5) = return (,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6) (m (a1,a2,a3,a4,a5,a6)) where sequenceT (a1,a2,a3,a4,a5,a6) = return (,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7) (m (a1,a2,a3,a4,a5,a6,a7)) where sequenceT (a1,a2,a3,a4,a5,a6,a7) = return (,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8) (m (a1,a2,a3,a4,a5,a6,a7,a8)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8) = return (,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9) = return (,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10) = return (,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11) = return (,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12) = return (,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13) = return (,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13,m a14) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14) = return (,,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13 `ap` a14
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13,m a14,m a15) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15) = return (,,,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13 `ap` a14 `ap` a15
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13,m a14,m a15,m a16) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16) = return (,,,,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13 `ap` a14 `ap` a15 `ap` a16
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13,m a14,m a15,m a16,m a17) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17) = return (,,,,,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13 `ap` a14 `ap` a15 `ap` a16 `ap` a17
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13,m a14,m a15,m a16,m a17,m a18) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18) = return (,,,,,,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13 `ap` a14 `ap` a15 `ap` a16 `ap` a17 `ap` a18
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13,m a14,m a15,m a16,m a17,m a18,m a19) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19) = return (,,,,,,,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13 `ap` a14 `ap` a15 `ap` a16 `ap` a17 `ap` a18 `ap` a19
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13,m a14,m a15,m a16,m a17,m a18,m a19,m a20) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20) = return (,,,,,,,,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13 `ap` a14 `ap` a15 `ap` a16 `ap` a17 `ap` a18 `ap` a19 `ap` a20
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13,m a14,m a15,m a16,m a17,m a18,m a19,m a20,m a21) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21) = return (,,,,,,,,,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13 `ap` a14 `ap` a15 `ap` a16 `ap` a17 `ap` a18 `ap` a19 `ap` a20 `ap` a21
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13,m a14,m a15,m a16,m a17,m a18,m a19,m a20,m a21,m a22) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22) = return (,,,,,,,,,,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13 `ap` a14 `ap` a15 `ap` a16 `ap` a17 `ap` a18 `ap` a19 `ap` a20 `ap` a21 `ap` a22
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13,m a14,m a15,m a16,m a17,m a18,m a19,m a20,m a21,m a22,m a23) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23) = return (,,,,,,,,,,,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13 `ap` a14 `ap` a15 `ap` a16 `ap` a17 `ap` a18 `ap` a19 `ap` a20 `ap` a21 `ap` a22 `ap` a23
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13,m a14,m a15,m a16,m a17,m a18,m a19,m a20,m a21,m a22,m a23,m a24) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24) = return (,,,,,,,,,,,,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13 `ap` a14 `ap` a15 `ap` a16 `ap` a17 `ap` a18 `ap` a19 `ap` a20 `ap` a21 `ap` a22 `ap` a23 `ap` a24
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13,m a14,m a15,m a16,m a17,m a18,m a19,m a20,m a21,m a22,m a23,m a24,m a25) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25) = return (,,,,,,,,,,,,,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13 `ap` a14 `ap` a15 `ap` a16 `ap` a17 `ap` a18 `ap` a19 `ap` a20 `ap` a21 `ap` a22 `ap` a23 `ap` a24 `ap` a25
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13,m a14,m a15,m a16,m a17,m a18,m a19,m a20,m a21,m a22,m a23,m a24,m a25,m a26) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26) = return (,,,,,,,,,,,,,,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13 `ap` a14 `ap` a15 `ap` a16 `ap` a17 `ap` a18 `ap` a19 `ap` a20 `ap` a21 `ap` a22 `ap` a23 `ap` a24 `ap` a25 `ap` a26
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13,m a14,m a15,m a16,m a17,m a18,m a19,m a20,m a21,m a22,m a23,m a24,m a25,m a26,m a27) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27) = return (,,,,,,,,,,,,,,,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13 `ap` a14 `ap` a15 `ap` a16 `ap` a17 `ap` a18 `ap` a19 `ap` a20 `ap` a21 `ap` a22 `ap` a23 `ap` a24 `ap` a25 `ap` a26 `ap` a27
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13,m a14,m a15,m a16,m a17,m a18,m a19,m a20,m a21,m a22,m a23,m a24,m a25,m a26,m a27,m a28) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28) = return (,,,,,,,,,,,,,,,,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13 `ap` a14 `ap` a15 `ap` a16 `ap` a17 `ap` a18 `ap` a19 `ap` a20 `ap` a21 `ap` a22 `ap` a23 `ap` a24 `ap` a25 `ap` a26 `ap` a27 `ap` a28
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13,m a14,m a15,m a16,m a17,m a18,m a19,m a20,m a21,m a22,m a23,m a24,m a25,m a26,m a27,m a28,m a29) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29) = return (,,,,,,,,,,,,,,,,,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13 `ap` a14 `ap` a15 `ap` a16 `ap` a17 `ap` a18 `ap` a19 `ap` a20 `ap` a21 `ap` a22 `ap` a23 `ap` a24 `ap` a25 `ap` a26 `ap` a27 `ap` a28 `ap` a29
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13,m a14,m a15,m a16,m a17,m a18,m a19,m a20,m a21,m a22,m a23,m a24,m a25,m a26,m a27,m a28,m a29,m a30) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30) = return (,,,,,,,,,,,,,,,,,,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13 `ap` a14 `ap` a15 `ap` a16 `ap` a17 `ap` a18 `ap` a19 `ap` a20 `ap` a21 `ap` a22 `ap` a23 `ap` a24 `ap` a25 `ap` a26 `ap` a27 `ap` a28 `ap` a29 `ap` a30
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13,m a14,m a15,m a16,m a17,m a18,m a19,m a20,m a21,m a22,m a23,m a24,m a25,m a26,m a27,m a28,m a29,m a30,m a31) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31) = return (,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13 `ap` a14 `ap` a15 `ap` a16 `ap` a17 `ap` a18 `ap` a19 `ap` a20 `ap` a21 `ap` a22 `ap` a23 `ap` a24 `ap` a25 `ap` a26 `ap` a27 `ap` a28 `ap` a29 `ap` a30 `ap` a31
instance (Monad m) => SequenceT (m a1,m a2,m a3,m a4,m a5,m a6,m a7,m a8,m a9,m a10,m a11,m a12,m a13,m a14,m a15,m a16,m a17,m a18,m a19,m a20,m a21,m a22,m a23,m a24,m a25,m a26,m a27,m a28,m a29,m a30,m a31,m a32) (m (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,a32)) where sequenceT (a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17,a18,a19,a20,a21,a22,a23,a24,a25,a26,a27,a28,a29,a30,a31,a32) = return (,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,) `ap` a1 `ap` a2 `ap` a3 `ap` a4 `ap` a5 `ap` a6 `ap` a7 `ap` a8 `ap` a9 `ap` a10 `ap` a11 `ap` a12 `ap` a13 `ap` a14 `ap` a15 `ap` a16 `ap` a17 `ap` a18 `ap` a19 `ap` a20 `ap` a21 `ap` a22 `ap` a23 `ap` a24 `ap` a25 `ap` a26 `ap` a27 `ap` a28 `ap` a29 `ap` a30 `ap` a31 `ap` a32
