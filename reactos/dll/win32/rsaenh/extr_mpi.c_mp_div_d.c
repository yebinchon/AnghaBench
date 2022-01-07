
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_1__ ;


typedef int mp_word ;
struct TYPE_14__ {int* dp; int used; int sign; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 scalar_t__ DIGIT_BIT ;
 int MP_OKAY ;
 int MP_VAL ;
 int mp_clamp (TYPE_1__*) ;
 int mp_clear (TYPE_1__*) ;
 int mp_copy (TYPE_1__ const*,TYPE_1__*) ;
 int mp_div_2d (TYPE_1__ const*,int,TYPE_1__*,int *) ;
 int mp_exch (TYPE_1__*,TYPE_1__*) ;
 int mp_init_size (TYPE_1__*,int) ;
 int mp_iszero (TYPE_1__ const*) ;
 scalar_t__ s_is_power_of_two (int,int*) ;

__attribute__((used)) static int mp_div_d (const mp_int * a, mp_digit b, mp_int * c, mp_digit * d)
{
  mp_int q;
  mp_word w;
  mp_digit t;
  int res, ix;


  if (b == 0) {
     return MP_VAL;
  }


  if (b == 1 || mp_iszero(a) == 1) {
     if (d != ((void*)0)) {
        *d = 0;
     }
     if (c != ((void*)0)) {
        return mp_copy(a, c);
     }
     return MP_OKAY;
  }


  if (s_is_power_of_two(b, &ix)) {
     if (d != ((void*)0)) {
        *d = a->dp[0] & ((((mp_digit)1)<<ix) - 1);
     }
     if (c != ((void*)0)) {
        return mp_div_2d(a, ix, c, ((void*)0));
     }
     return MP_OKAY;
  }


  if ((res = mp_init_size(&q, a->used)) != MP_OKAY) {
     return res;
  }

  q.used = a->used;
  q.sign = a->sign;
  w = 0;
  for (ix = a->used - 1; ix >= 0; ix--) {
     w = (w << ((mp_word)DIGIT_BIT)) | ((mp_word)a->dp[ix]);

     if (w >= b) {
        t = (mp_digit)(w / b);
        w -= ((mp_word)t) * ((mp_word)b);
      } else {
        t = 0;
      }
      q.dp[ix] = t;
  }

  if (d != ((void*)0)) {
     *d = (mp_digit)w;
  }

  if (c != ((void*)0)) {
     mp_clamp(&q);
     mp_exch(&q, c);
  }
  mp_clear(&q);

  return res;
}
