
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int increment_t ;


 int SHIFT_BITS ;

__attribute__((used)) static inline int
fp_to_int (increment_t x)
{ return (((x) >> SHIFT_BITS)) ;
}
