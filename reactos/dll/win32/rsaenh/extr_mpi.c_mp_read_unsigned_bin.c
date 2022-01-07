
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int alloc; int used; int * dp; } ;
typedef TYPE_1__ mp_int ;


 int MP_OKAY ;
 int mp_clamp (TYPE_1__*) ;
 int mp_grow (TYPE_1__*,int) ;
 int mp_mul_2d (TYPE_1__*,int,TYPE_1__*) ;
 int mp_zero (TYPE_1__*) ;

int
mp_read_unsigned_bin (mp_int * a, const unsigned char *b, int c)
{
  int res;


  if (a->alloc < 2) {
     if ((res = mp_grow(a, 2)) != MP_OKAY) {
        return res;
     }
  }


  mp_zero (a);


  while (c-- > 0) {
    if ((res = mp_mul_2d (a, 8, a)) != MP_OKAY) {
      return res;
    }

    a->dp[0] |= *b++;
    a->used += 1;
  }
  mp_clamp (a);
  return MP_OKAY;
}
