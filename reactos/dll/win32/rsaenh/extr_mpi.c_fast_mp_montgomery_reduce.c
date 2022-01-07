
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


typedef int mp_word ;
struct TYPE_11__ {int used; int alloc; int* dp; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 scalar_t__ DIGIT_BIT ;
 scalar_t__ MP_LT ;
 int MP_MASK ;
 int MP_OKAY ;
 int MP_WARRAY ;
 int mp_clamp (TYPE_1__*) ;
 scalar_t__ mp_cmp_mag (TYPE_1__*,TYPE_1__ const*) ;
 int mp_grow (TYPE_1__*,int) ;
 int s_mp_sub (TYPE_1__*,TYPE_1__ const*,TYPE_1__*) ;

__attribute__((used)) static int
fast_mp_montgomery_reduce (mp_int * x, const mp_int * n, mp_digit rho)
{
  int ix, res, olduse;
  mp_word W[MP_WARRAY];


  olduse = x->used;


  if (x->alloc < n->used + 1) {
    if ((res = mp_grow (x, n->used + 1)) != MP_OKAY) {
      return res;
    }
  }




  {
    register mp_word *_W;
    register mp_digit *tmpx;


    _W = W;


    tmpx = x->dp;


    for (ix = 0; ix < x->used; ix++) {
      *_W++ = *tmpx++;
    }


    for (; ix < n->used * 2 + 1; ix++) {
      *_W++ = 0;
    }
  }




  for (ix = 0; ix < n->used; ix++) {






    register mp_digit mu;
    mu = (mp_digit) (((W[ix] & MP_MASK) * rho) & MP_MASK);
    {
      register int iy;
      register mp_digit *tmpn;
      register mp_word *_W;


      tmpn = n->dp;


      _W = W + ix;


      for (iy = 0; iy < n->used; iy++) {
          *_W++ += ((mp_word)mu) * ((mp_word)*tmpn++);
      }
    }


    W[ix + 1] += W[ix] >> ((mp_word) DIGIT_BIT);
  }





  {
    register mp_digit *tmpx;
    register mp_word *_W, *_W1;




    _W1 = W + ix;


    _W = W + ++ix;

    for (; ix <= n->used * 2 + 1; ix++) {
      *_W++ += *_W1++ >> ((mp_word) DIGIT_BIT);
    }
    tmpx = x->dp;


    _W = W + n->used;

    for (ix = 0; ix < n->used + 1; ix++) {
      *tmpx++ = (mp_digit)(*_W++ & ((mp_word) MP_MASK));
    }




    for (; ix < olduse; ix++) {
      *tmpx++ = 0;
    }
  }


  x->used = n->used + 1;
  mp_clamp (x);


  if (mp_cmp_mag (x, n) != MP_LT) {
    return s_mp_sub (x, n, x);
  }
  return MP_OKAY;
}
