
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int mp_word ;
struct TYPE_14__ {scalar_t__ sign; int used; } ;
typedef TYPE_1__ mp_int ;


 int CHAR_BIT ;
 int DIGIT_BIT ;
 int KARATSUBA_MUL_CUTOFF ;
 int MIN (int,int) ;
 int MP_NEG ;
 int MP_WARRAY ;
 int MP_ZPOS ;
 int fast_s_mp_mul_digs (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*,int) ;
 int mp_karatsuba_mul (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*) ;
 int s_mp_mul (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*) ;

int mp_mul (const mp_int * a, const mp_int * b, mp_int * c)
{
  int res, neg;
  neg = (a->sign == b->sign) ? MP_ZPOS : MP_NEG;


  if (MIN (a->used, b->used) >= KARATSUBA_MUL_CUTOFF) {
    res = mp_karatsuba_mul (a, b, c);
  } else
  {






    int digs = a->used + b->used + 1;

    if ((digs < MP_WARRAY) &&
        MIN(a->used, b->used) <=
        (1 << ((CHAR_BIT * sizeof (mp_word)) - (2 * DIGIT_BIT)))) {
      res = fast_s_mp_mul_digs (a, b, c, digs);
    } else
      res = s_mp_mul (a, b, c);
  }
  c->sign = (c->used > 0) ? neg : MP_ZPOS;
  return res;
}
