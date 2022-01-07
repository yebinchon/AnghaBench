
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_word ;
struct TYPE_3__ {int* dp; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 scalar_t__ DIGIT_BIT ;
 int MP_MASK ;
 int MP_OKAY ;
 int MP_VAL ;

int
mp_montgomery_setup (const mp_int * n, mp_digit * rho)
{
  mp_digit x, b;
  b = n->dp[0];

  if ((b & 1) == 0) {
    return MP_VAL;
  }

  x = (((b + 2) & 4) << 1) + b;
  x *= 2 - b * x;
  x *= 2 - b * x;
  x *= 2 - b * x;


  *rho = (((mp_word)1 << ((mp_word) DIGIT_BIT)) - x) & MP_MASK;

  return MP_OKAY;
}
