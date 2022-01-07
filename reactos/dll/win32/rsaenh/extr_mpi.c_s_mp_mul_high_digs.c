
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int mp_word ;
struct TYPE_13__ {scalar_t__ used; scalar_t__* dp; } ;
typedef TYPE_1__ mp_int ;
typedef scalar_t__ mp_digit ;


 int CHAR_BIT ;
 int DIGIT_BIT ;
 int MIN (scalar_t__,scalar_t__) ;
 scalar_t__ MP_MASK ;
 int MP_OKAY ;
 scalar_t__ MP_WARRAY ;
 int fast_s_mp_mul_high_digs (TYPE_1__ const*,TYPE_1__ const*,TYPE_1__*,int) ;
 int mp_clamp (TYPE_1__*) ;
 int mp_clear (TYPE_1__*) ;
 int mp_exch (TYPE_1__*,TYPE_1__*) ;
 int mp_init_size (TYPE_1__*,scalar_t__) ;

__attribute__((used)) static int
s_mp_mul_high_digs (const mp_int * a, const mp_int * b, mp_int * c, int digs)
{
  mp_int t;
  int res, pa, pb, ix, iy;
  mp_digit u;
  mp_word r;
  mp_digit tmpx, *tmpt, *tmpy;


  if (((a->used + b->used + 1) < MP_WARRAY)
      && MIN (a->used, b->used) < (1 << ((CHAR_BIT * sizeof (mp_word)) - (2 * DIGIT_BIT)))) {
    return fast_s_mp_mul_high_digs (a, b, c, digs);
  }

  if ((res = mp_init_size (&t, a->used + b->used + 1)) != MP_OKAY) {
    return res;
  }
  t.used = a->used + b->used + 1;

  pa = a->used;
  pb = b->used;
  for (ix = 0; ix < pa; ix++) {

    u = 0;


    tmpx = a->dp[ix];


    tmpt = &(t.dp[digs]);


    tmpy = b->dp + (digs - ix);

    for (iy = digs - ix; iy < pb; iy++) {

      r = ((mp_word)*tmpt) +
                ((mp_word)tmpx) * ((mp_word)*tmpy++) +
                ((mp_word) u);


      *tmpt++ = (mp_digit) (r & ((mp_word) MP_MASK));


      u = (mp_digit) (r >> ((mp_word) DIGIT_BIT));
    }
    *tmpt = u;
  }
  mp_clamp (&t);
  mp_exch (&t, c);
  mp_clear (&t);
  return MP_OKAY;
}
