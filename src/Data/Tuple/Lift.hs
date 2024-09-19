{-# LANGUAGE FlexibleContexts       #-}
{-# LANGUAGE FlexibleInstances      #-}
{-# LANGUAGE FunctionalDependencies #-}
{-# LANGUAGE PolyKinds              #-}
module Data.Tuple.Lift where
import Data.Tuple.OneTuple

-- | Tuple curry/uncurry.
class LiftAN f a b | b -> f a where
    liftAN   :: a -> b

--snip-----------------
---- Machine generated code below, see Tools/MkTuple.hs
---- mkTuple lift 32
instance Applicative f => LiftAN f (t1 -> r) (f t1 -> f r) where
   liftAN f x1 =
     f <$> x1

instance Applicative f => LiftAN f (t1 -> t2 -> r) (f t1 -> f t2 -> f r) where
   liftAN f x1 x2 =
     f <$> x1 <*> x2

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> r) (f t1 -> f t2 -> f t3 -> f r) where
   liftAN f x1 x2 x3 =
     f <$> x1 <*> x2 <*> x3

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f r) where
   liftAN f x1 x2 x3 x4 =
     f <$> x1 <*> x2 <*> x3 <*> x4

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f r) where
   liftAN f x1 x2 x3 x4 x5 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> t14 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f t14 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13 <*> x14

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> t14 -> t15 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f t14 -> f t15 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13 <*> x14 <*> x15

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> t14 -> t15 -> t16 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f t14 -> f t15 -> f t16 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13 <*> x14 <*> x15 <*> x16

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> t14 -> t15 -> t16 -> t17 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f t14 -> f t15 -> f t16 -> f t17 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13 <*> x14 <*> x15 <*> x16 <*> x17

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> t14 -> t15 -> t16 -> t17 -> t18 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f t14 -> f t15 -> f t16 -> f t17 -> f t18 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13 <*> x14 <*> x15 <*> x16 <*> x17 <*> x18

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> t14 -> t15 -> t16 -> t17 -> t18 -> t19 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f t14 -> f t15 -> f t16 -> f t17 -> f t18 -> f t19 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13 <*> x14 <*> x15 <*> x16 <*> x17 <*> x18 <*> x19

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> t14 -> t15 -> t16 -> t17 -> t18 -> t19 -> t20 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f t14 -> f t15 -> f t16 -> f t17 -> f t18 -> f t19 -> f t20 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13 <*> x14 <*> x15 <*> x16 <*> x17 <*> x18 <*> x19 <*> x20

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> t14 -> t15 -> t16 -> t17 -> t18 -> t19 -> t20 -> t21 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f t14 -> f t15 -> f t16 -> f t17 -> f t18 -> f t19 -> f t20 -> f t21 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13 <*> x14 <*> x15 <*> x16 <*> x17 <*> x18 <*> x19 <*> x20 <*> x21

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> t14 -> t15 -> t16 -> t17 -> t18 -> t19 -> t20 -> t21 -> t22 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f t14 -> f t15 -> f t16 -> f t17 -> f t18 -> f t19 -> f t20 -> f t21 -> f t22 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13 <*> x14 <*> x15 <*> x16 <*> x17 <*> x18 <*> x19 <*> x20 <*> x21 <*> x22

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> t14 -> t15 -> t16 -> t17 -> t18 -> t19 -> t20 -> t21 -> t22 -> t23 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f t14 -> f t15 -> f t16 -> f t17 -> f t18 -> f t19 -> f t20 -> f t21 -> f t22 -> f t23 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13 <*> x14 <*> x15 <*> x16 <*> x17 <*> x18 <*> x19 <*> x20 <*> x21 <*> x22 <*> x23

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> t14 -> t15 -> t16 -> t17 -> t18 -> t19 -> t20 -> t21 -> t22 -> t23 -> t24 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f t14 -> f t15 -> f t16 -> f t17 -> f t18 -> f t19 -> f t20 -> f t21 -> f t22 -> f t23 -> f t24 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23 x24 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13 <*> x14 <*> x15 <*> x16 <*> x17 <*> x18 <*> x19 <*> x20 <*> x21 <*> x22 <*> x23 <*> x24

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> t14 -> t15 -> t16 -> t17 -> t18 -> t19 -> t20 -> t21 -> t22 -> t23 -> t24 -> t25 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f t14 -> f t15 -> f t16 -> f t17 -> f t18 -> f t19 -> f t20 -> f t21 -> f t22 -> f t23 -> f t24 -> f t25 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23 x24 x25 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13 <*> x14 <*> x15 <*> x16 <*> x17 <*> x18 <*> x19 <*> x20 <*> x21 <*> x22 <*> x23 <*> x24 <*> x25

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> t14 -> t15 -> t16 -> t17 -> t18 -> t19 -> t20 -> t21 -> t22 -> t23 -> t24 -> t25 -> t26 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f t14 -> f t15 -> f t16 -> f t17 -> f t18 -> f t19 -> f t20 -> f t21 -> f t22 -> f t23 -> f t24 -> f t25 -> f t26 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23 x24 x25 x26 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13 <*> x14 <*> x15 <*> x16 <*> x17 <*> x18 <*> x19 <*> x20 <*> x21 <*> x22 <*> x23 <*> x24 <*> x25 <*> x26

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> t14 -> t15 -> t16 -> t17 -> t18 -> t19 -> t20 -> t21 -> t22 -> t23 -> t24 -> t25 -> t26 -> t27 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f t14 -> f t15 -> f t16 -> f t17 -> f t18 -> f t19 -> f t20 -> f t21 -> f t22 -> f t23 -> f t24 -> f t25 -> f t26 -> f t27 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23 x24 x25 x26 x27 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13 <*> x14 <*> x15 <*> x16 <*> x17 <*> x18 <*> x19 <*> x20 <*> x21 <*> x22 <*> x23 <*> x24 <*> x25 <*> x26 <*> x27

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> t14 -> t15 -> t16 -> t17 -> t18 -> t19 -> t20 -> t21 -> t22 -> t23 -> t24 -> t25 -> t26 -> t27 -> t28 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f t14 -> f t15 -> f t16 -> f t17 -> f t18 -> f t19 -> f t20 -> f t21 -> f t22 -> f t23 -> f t24 -> f t25 -> f t26 -> f t27 -> f t28 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23 x24 x25 x26 x27 x28 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13 <*> x14 <*> x15 <*> x16 <*> x17 <*> x18 <*> x19 <*> x20 <*> x21 <*> x22 <*> x23 <*> x24 <*> x25 <*> x26 <*> x27 <*> x28

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> t14 -> t15 -> t16 -> t17 -> t18 -> t19 -> t20 -> t21 -> t22 -> t23 -> t24 -> t25 -> t26 -> t27 -> t28 -> t29 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f t14 -> f t15 -> f t16 -> f t17 -> f t18 -> f t19 -> f t20 -> f t21 -> f t22 -> f t23 -> f t24 -> f t25 -> f t26 -> f t27 -> f t28 -> f t29 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23 x24 x25 x26 x27 x28 x29 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13 <*> x14 <*> x15 <*> x16 <*> x17 <*> x18 <*> x19 <*> x20 <*> x21 <*> x22 <*> x23 <*> x24 <*> x25 <*> x26 <*> x27 <*> x28 <*> x29

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> t14 -> t15 -> t16 -> t17 -> t18 -> t19 -> t20 -> t21 -> t22 -> t23 -> t24 -> t25 -> t26 -> t27 -> t28 -> t29 -> t30 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f t14 -> f t15 -> f t16 -> f t17 -> f t18 -> f t19 -> f t20 -> f t21 -> f t22 -> f t23 -> f t24 -> f t25 -> f t26 -> f t27 -> f t28 -> f t29 -> f t30 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23 x24 x25 x26 x27 x28 x29 x30 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13 <*> x14 <*> x15 <*> x16 <*> x17 <*> x18 <*> x19 <*> x20 <*> x21 <*> x22 <*> x23 <*> x24 <*> x25 <*> x26 <*> x27 <*> x28 <*> x29 <*> x30

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> t14 -> t15 -> t16 -> t17 -> t18 -> t19 -> t20 -> t21 -> t22 -> t23 -> t24 -> t25 -> t26 -> t27 -> t28 -> t29 -> t30 -> t31 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f t14 -> f t15 -> f t16 -> f t17 -> f t18 -> f t19 -> f t20 -> f t21 -> f t22 -> f t23 -> f t24 -> f t25 -> f t26 -> f t27 -> f t28 -> f t29 -> f t30 -> f t31 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23 x24 x25 x26 x27 x28 x29 x30 x31 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13 <*> x14 <*> x15 <*> x16 <*> x17 <*> x18 <*> x19 <*> x20 <*> x21 <*> x22 <*> x23 <*> x24 <*> x25 <*> x26 <*> x27 <*> x28 <*> x29 <*> x30 <*> x31

instance Applicative f => LiftAN f (t1 -> t2 -> t3 -> t4 -> t5 -> t6 -> t7 -> t8 -> t9 -> t10 -> t11 -> t12 -> t13 -> t14 -> t15 -> t16 -> t17 -> t18 -> t19 -> t20 -> t21 -> t22 -> t23 -> t24 -> t25 -> t26 -> t27 -> t28 -> t29 -> t30 -> t31 -> t32 -> r) (f t1 -> f t2 -> f t3 -> f t4 -> f t5 -> f t6 -> f t7 -> f t8 -> f t9 -> f t10 -> f t11 -> f t12 -> f t13 -> f t14 -> f t15 -> f t16 -> f t17 -> f t18 -> f t19 -> f t20 -> f t21 -> f t22 -> f t23 -> f t24 -> f t25 -> f t26 -> f t27 -> f t28 -> f t29 -> f t30 -> f t31 -> f t32 -> f r) where
   liftAN f x1 x2 x3 x4 x5 x6 x7 x8 x9 x10 x11 x12 x13 x14 x15 x16 x17 x18 x19 x20 x21 x22 x23 x24 x25 x26 x27 x28 x29 x30 x31 x32 =
     f <$> x1 <*> x2 <*> x3 <*> x4 <*> x5 <*> x6 <*> x7 <*> x8 <*> x9 <*> x10 <*> x11 <*> x12 <*> x13 <*> x14 <*> x15 <*> x16 <*> x17 <*> x18 <*> x19 <*> x20 <*> x21 <*> x22 <*> x23 <*> x24 <*> x25 <*> x26 <*> x27 <*> x28 <*> x29 <*> x30 <*> x31 <*> x32
