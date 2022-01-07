
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int mp_word ;
struct TYPE_9__ {int used; scalar_t__* dp; } ;
typedef TYPE_1__ mp_int ;
typedef scalar_t__ mp_digit ;


 scalar_t__ DIGIT_BIT ;
 scalar_t__ MP_MASK ;
 int MP_OKAY ;
 int mp_clamp (TYPE_1__*) ;
 int mp_clear (TYPE_1__*) ;
 int mp_exch (TYPE_1__*,TYPE_1__*) ;
 int mp_init_size (TYPE_1__*,int) ;

__attribute__((used)) static int
s_mp_sqr (const mp_int * a, mp_int * b)
{
  mp_int t;
  int res, ix, iy, pa;
  mp_word r;
  mp_digit u, tmpx, *tmpt;

  pa = a->used;
  if ((res = mp_init_size (&t, 2*pa + 1)) != MP_OKAY) {
    return res;
  }


  t.used = 2*pa + 1;

  for (ix = 0; ix < pa; ix++) {


    r = ((mp_word) t.dp[2*ix]) +
        ((mp_word)a->dp[ix])*((mp_word)a->dp[ix]);


    t.dp[ix+ix] = (mp_digit) (r & ((mp_word) MP_MASK));


    u = (mp_digit)(r >> ((mp_word) DIGIT_BIT));


    tmpx = a->dp[ix];


    tmpt = t.dp + (2*ix + 1);

    for (iy = ix + 1; iy < pa; iy++) {

      r = ((mp_word)tmpx) * ((mp_word)a->dp[iy]);




      r = ((mp_word) *tmpt) + r + r + ((mp_word) u);


      *tmpt++ = (mp_digit) (r & ((mp_word) MP_MASK));


      u = (mp_digit)(r >> ((mp_word) DIGIT_BIT));
    }

    while (u != 0) {
      r = ((mp_word) *tmpt) + ((mp_word) u);
      *tmpt++ = (mp_digit) (r & ((mp_word) MP_MASK));
      u = (mp_digit)(r >> ((mp_word) DIGIT_BIT));
    }
  }

  mp_clamp (&t);
  mp_exch (&t, b);
  mp_clear (&t);
  return MP_OKAY;
}
