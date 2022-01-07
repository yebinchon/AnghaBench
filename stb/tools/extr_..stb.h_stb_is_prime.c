
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int stb_is_prime(unsigned int m)
{
   unsigned int i,j;
   if (m < 2) return 0;
   if (m == 2) return 1;
   if (!(m & 1)) return 0;
   if (m % 3 == 0) return (m == 3);
   for (i=5; (j=i*i), j <= m && j > i; i += 6) {
      if (m % i == 0) return 0;
      if (m % (i+2) == 0) return 0;
   }
   return 1;
}
