
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static double stb__clex_pow(double base, unsigned int exponent)
{
   double value=1;
   for ( ; exponent; exponent >>= 1) {
      if (exponent & 1)
         value *= base;
      base *= base;
   }
   return value;
}
