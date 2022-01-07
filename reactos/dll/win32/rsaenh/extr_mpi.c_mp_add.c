
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int sign; } ;
typedef TYPE_1__ mp_int ;


 scalar_t__ MP_LT ;
 scalar_t__ mp_cmp_mag (TYPE_1__*,TYPE_1__*) ;
 int s_mp_add (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;
 int s_mp_sub (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;

int mp_add (mp_int * a, mp_int * b, mp_int * c)
{
  int sa, sb, res;


  sa = a->sign;
  sb = b->sign;


  if (sa == sb) {


    c->sign = sa;
    res = s_mp_add (a, b, c);
  } else {




    if (mp_cmp_mag (a, b) == MP_LT) {
      c->sign = sb;
      res = s_mp_sub (b, a, c);
    } else {
      c->sign = sa;
      res = s_mp_sub (a, b, c);
    }
  }
  return res;
}
