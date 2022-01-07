
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int used; scalar_t__* dp; } ;
typedef TYPE_1__ mp_int ;
typedef int mp_digit ;


 int DIGIT_BIT ;
 scalar_t__* lnz ;
 int mp_iszero (TYPE_1__ const*) ;

int mp_cnt_lsb(const mp_int *a)
{
   int x;
   mp_digit q, qq;


   if (mp_iszero(a) == 1) {
      return 0;
   }


   for (x = 0; x < a->used && a->dp[x] == 0; x++);
   q = a->dp[x];
   x *= DIGIT_BIT;


   if ((q & 1) == 0) {
      do {
         qq = q & 15;
         x += lnz[qq];
         q >>= 4;
      } while (qq == 0);
   }
   return x;
}
