
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int mp_word ;
struct TYPE_6__ {int used; int alloc; int* dp; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 scalar_t__ DIGIT_BIT ;
 int MIN (int,int) ;
 int MP_MASK ;
 int MP_OKAY ;
 int MP_WARRAY ;
 int mp_clamp (TYPE_1__*) ;
 int mp_grow (TYPE_1__*,int) ;

__attribute__((used)) static int fast_s_mp_sqr (const mp_int * a, mp_int * b)
{
  int olduse, res, pa, ix, iz;
  mp_digit W[MP_WARRAY], *tmpx;
  mp_word W1;


  pa = a->used + a->used;
  if (b->alloc < pa) {
    if ((res = mp_grow (b, pa)) != MP_OKAY) {
      return res;
    }
  }


  W1 = 0;
  for (ix = 0; ix <= pa; ix++) {
      int tx, ty, iy;
      mp_word _W;
      mp_digit *tmpy;


      _W = 0;


      ty = MIN(a->used-1, ix);
      tx = ix - ty;


      tmpx = a->dp + tx;
      tmpy = a->dp + ty;




      iy = MIN(a->used-tx, ty+1);





      iy = MIN(iy, (ty-tx+1)>>1);


      for (iz = 0; iz < iy; iz++) {
         _W += ((mp_word)*tmpx++)*((mp_word)*tmpy--);
      }


      _W = _W + _W + W1;


      if ((ix&1) == 0) {
         _W += ((mp_word)a->dp[ix>>1])*((mp_word)a->dp[ix>>1]);
      }


      W[ix] = _W;


      W1 = _W >> ((mp_word)DIGIT_BIT);
  }


  olduse = b->used;
  b->used = a->used+a->used;

  {
    mp_digit *tmpb;
    tmpb = b->dp;
    for (ix = 0; ix < pa; ix++) {
      *tmpb++ = W[ix] & MP_MASK;
    }


    for (; ix < olduse; ix++) {
      *tmpb++ = 0;
    }
  }
  mp_clamp (b);
  return MP_OKAY;
}
