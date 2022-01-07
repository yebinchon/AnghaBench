
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int* dp; } ;
typedef TYPE_1__ mp_int ;


 int MP_OKAY ;
 int bn_reverse (unsigned char*,int) ;
 int mp_clear (TYPE_1__*) ;
 int mp_div_2d (TYPE_1__*,int,TYPE_1__*,int *) ;
 int mp_init_copy (TYPE_1__*,TYPE_1__ const*) ;
 scalar_t__ mp_iszero (TYPE_1__*) ;

int
mp_to_unsigned_bin (const mp_int * a, unsigned char *b)
{
  int x, res;
  mp_int t;

  if ((res = mp_init_copy (&t, a)) != MP_OKAY) {
    return res;
  }

  x = 0;
  while (mp_iszero (&t) == 0) {
    b[x++] = (unsigned char) (t.dp[0] & 255);
    if ((res = mp_div_2d (&t, 8, &t, ((void*)0))) != MP_OKAY) {
      mp_clear (&t);
      return res;
    }
  }
  bn_reverse (b, x);
  mp_clear (&t);
  return MP_OKAY;
}
