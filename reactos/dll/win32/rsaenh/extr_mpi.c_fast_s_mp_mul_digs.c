
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int mp_word ;
struct TYPE_7__ {int alloc; int used; int* dp; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 scalar_t__ DIGIT_BIT ;
 int MIN (int,int) ;
 int MP_MASK ;
 int MP_OKAY ;
 int MP_WARRAY ;
 int mp_clamp (TYPE_1__*) ;
 int mp_grow (TYPE_1__*,int) ;

__attribute__((used)) static int
fast_s_mp_mul_digs (const mp_int * a, const mp_int * b, mp_int * c, int digs)
{
  int olduse, res, pa, ix, iz;
  mp_digit W[MP_WARRAY];
  register mp_word _W;


  if (c->alloc < digs) {
    if ((res = mp_grow (c, digs)) != MP_OKAY) {
      return res;
    }
  }


  pa = MIN(digs, a->used + b->used);


  _W = 0;
  for (ix = 0; ix <= pa; ix++) {
      int tx, ty;
      int iy;
      mp_digit *tmpx, *tmpy;


      ty = MIN(b->used-1, ix);
      tx = ix - ty;


      tmpx = a->dp + tx;
      tmpy = b->dp + ty;




      iy = MIN(a->used-tx, ty+1);


      for (iz = 0; iz < iy; ++iz) {
         _W += ((mp_word)*tmpx++)*((mp_word)*tmpy--);
      }


      W[ix] = ((mp_digit)_W) & MP_MASK;


      _W = _W >> ((mp_word)DIGIT_BIT);
  }


  olduse = c->used;
  c->used = digs;

  {
    register mp_digit *tmpc;
    tmpc = c->dp;
    for (ix = 0; ix < digs; ix++) {

      *tmpc++ = W[ix];
    }


    for (; ix < olduse; ix++) {
      *tmpc++ = 0;
    }
  }
  mp_clamp (c);
  return MP_OKAY;
}
