
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ sign; } ;
typedef TYPE_1__ mp_int ;


 int MP_GT ;
 int MP_LT ;
 scalar_t__ MP_NEG ;
 int mp_cmp_mag (TYPE_1__ const*,TYPE_1__ const*) ;

int
mp_cmp (const mp_int * a, const mp_int * b)
{

  if (a->sign != b->sign) {
     if (a->sign == MP_NEG) {
        return MP_LT;
     } else {
        return MP_GT;
     }
  }


  if (a->sign == MP_NEG) {

     return mp_cmp_mag(b, a);
  } else {
     return mp_cmp_mag(a, b);
  }
}
