
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int x ;
typedef int increment_t ;


 int SHIFT_BITS ;

__attribute__((used)) static inline increment_t
fp_fraction_part (increment_t x)
{ return ((x) & ((((increment_t) 1) << SHIFT_BITS) - 1)) ;
}
