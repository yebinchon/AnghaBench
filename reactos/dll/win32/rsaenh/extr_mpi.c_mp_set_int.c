
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {unsigned long* dp; int used; } ;
typedef TYPE_1__ mp_int ;


 int MP_OKAY ;
 int mp_clamp (TYPE_1__*) ;
 int mp_mul_2d (TYPE_1__*,int,TYPE_1__*) ;
 int mp_zero (TYPE_1__*) ;

int mp_set_int (mp_int * a, unsigned long b)
{
  int x, res;

  mp_zero (a);


  for (x = 0; x < 8; x++) {

    if ((res = mp_mul_2d (a, 4, a)) != MP_OKAY) {
      return res;
    }


    a->dp[0] |= (b >> 28) & 15;


    b <<= 4;


    a->used += 1;
  }
  mp_clamp (a);
  return MP_OKAY;
}
