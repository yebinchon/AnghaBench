
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int mp_word ;
struct TYPE_13__ {int used; scalar_t__* dp; } ;
typedef TYPE_1__ mp_int ;
typedef scalar_t__ mp_digit ;


 int CHAR_BIT ;
 int DIGIT_BIT ;
 int MIN (int,int) ;
 scalar_t__ MP_MASK ;
 int MP_OKAY ;
 int MP_WARRAY ;
 int fast_s_mp_mul_digs (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*,int) ;
 int mp_clamp (TYPE_1__*) ;
 int mp_clear (TYPE_1__*) ;
 int mp_exch (TYPE_1__*,TYPE_1__*) ;
 int mp_init_size (TYPE_1__*,int) ;

__attribute__((used)) static int
s_mp_mul_digs (const mp_int * a, const mp_int * b, mp_int * c, int digs)
{
  mp_int t;
  int res, pa, pb, ix, iy;
  mp_digit u;
  mp_word r;
  mp_digit tmpx, *tmpt, *tmpy;


  if (((digs) < MP_WARRAY) &&
      MIN (a->used, b->used) <
          (1 << ((CHAR_BIT * sizeof (mp_word)) - (2 * DIGIT_BIT)))) {
    return fast_s_mp_mul_digs (a, b, c, digs);
  }

  if ((res = mp_init_size (&t, digs)) != MP_OKAY) {
    return res;
  }
  t.used = digs;


  pa = a->used;
  for (ix = 0; ix < pa; ix++) {

    u = 0;


    pb = MIN (b->used, digs - ix);



    tmpx = a->dp[ix];


    tmpt = t.dp + ix;


    tmpy = b->dp;


    for (iy = 0; iy < pb; iy++) {

      r = ((mp_word)*tmpt) +
                ((mp_word)tmpx) * ((mp_word)*tmpy++) +
                ((mp_word) u);


      *tmpt++ = (mp_digit) (r & ((mp_word) MP_MASK));


      u = (mp_digit) (r >> ((mp_word) DIGIT_BIT));
    }

    if (ix + iy < digs) {
      *tmpt = u;
    }
  }

  mp_clamp (&t);
  mp_exch (&t, c);

  mp_clear (&t);
  return MP_OKAY;
}
