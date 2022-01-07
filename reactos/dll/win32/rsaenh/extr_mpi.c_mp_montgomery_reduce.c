
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int mp_word ;
struct TYPE_14__ {int used; int alloc; int* dp; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 int CHAR_BIT ;
 int DIGIT_BIT ;
 scalar_t__ MP_LT ;
 int MP_MASK ;
 int MP_OKAY ;
 int MP_WARRAY ;
 int fast_mp_montgomery_reduce (TYPE_1__*,TYPE_1__ const*,int) ;
 int mp_clamp (TYPE_1__*) ;
 scalar_t__ mp_cmp_mag (TYPE_1__*,TYPE_1__ const*) ;
 int mp_grow (TYPE_1__*,int) ;
 int mp_rshd (TYPE_1__*,int) ;
 int s_mp_sub (TYPE_1__*,TYPE_1__ const*,TYPE_1__*) ;

int
mp_montgomery_reduce (mp_int * x, const mp_int * n, mp_digit rho)
{
  int ix, res, digs;
  mp_digit mu;







  digs = n->used * 2 + 1;
  if ((digs < MP_WARRAY) &&
      n->used <
      (1 << ((CHAR_BIT * sizeof (mp_word)) - (2 * DIGIT_BIT)))) {
    return fast_mp_montgomery_reduce (x, n, rho);
  }


  if (x->alloc < digs) {
    if ((res = mp_grow (x, digs)) != MP_OKAY) {
      return res;
    }
  }
  x->used = digs;

  for (ix = 0; ix < n->used; ix++) {
    mu = (mp_digit) (((mp_word)x->dp[ix]) * ((mp_word)rho) & MP_MASK);


    {
      register int iy;
      register mp_digit *tmpn, *tmpx, u;
      register mp_word r;


      tmpn = n->dp;


      tmpx = x->dp + ix;


      u = 0;


      for (iy = 0; iy < n->used; iy++) {

        r = ((mp_word)mu) * ((mp_word)*tmpn++) +
                  ((mp_word) u) + ((mp_word) * tmpx);


        u = (mp_digit)(r >> ((mp_word) DIGIT_BIT));


        *tmpx++ = (mp_digit)(r & ((mp_word) MP_MASK));
      }




      while (u) {
        *tmpx += u;
        u = *tmpx >> DIGIT_BIT;
        *tmpx++ &= MP_MASK;
      }
    }
  }
  mp_clamp(x);
  mp_rshd (x, n->used);


  if (mp_cmp_mag (x, n) != MP_LT) {
    return s_mp_sub (x, n, x);
  }

  return MP_OKAY;
}
