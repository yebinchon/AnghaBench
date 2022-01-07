
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int increment_t ;


 int SHIFT_BITS ;

__attribute__((used)) static inline increment_t
int_to_fp (int x)
{ return (((increment_t) (x)) << SHIFT_BITS) ;
}
