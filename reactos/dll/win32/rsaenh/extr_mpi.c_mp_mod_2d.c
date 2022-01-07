
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int used; int* dp; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 int DIGIT_BIT ;
 int MP_OKAY ;
 int mp_clamp (TYPE_1__*) ;
 int mp_copy (TYPE_1__ const*,TYPE_1__*) ;
 int mp_zero (TYPE_1__*) ;

__attribute__((used)) static int
mp_mod_2d (const mp_int * a, int b, mp_int * c)
{
  int x, res;


  if (b <= 0) {
    mp_zero (c);
    return MP_OKAY;
  }


  if (b > a->used * DIGIT_BIT) {
    res = mp_copy (a, c);
    return res;
  }


  if ((res = mp_copy (a, c)) != MP_OKAY) {
    return res;
  }


  for (x = (b / DIGIT_BIT) + ((b % DIGIT_BIT) == 0 ? 0 : 1); x < c->used; x++) {
    c->dp[x] = 0;
  }

  c->dp[b / DIGIT_BIT] &= (1 << ((mp_digit)b % DIGIT_BIT)) - 1;
  mp_clamp (c);
  return MP_OKAY;
}
