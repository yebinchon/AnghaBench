
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double stb__clex_pow (int,unsigned int) ;

__attribute__((used)) static double stb__clex_parse_float(char *p, char **q)
{
   char *s = p;
   double value=0;
   int base=10;
   int exponent=0;
   for (;;) {
      if (*p >= '0' && *p <= '9')
         value = value*base + (*p++ - '0');






      else
         break;
   }

   if (*p == '.') {
      double pow, addend = 0;
      ++p;
      for (pow=1; ; pow*=base) {
         if (*p >= '0' && *p <= '9')
            addend = addend*base + (*p++ - '0');






         else
            break;
      }
      value += addend / pow;
   }
      exponent = (*p == 'e' || *p == 'E');

   if (exponent) {
      int sign = p[1] == '-';
      unsigned int exponent=0;
      double power=1;
      ++p;
      if (*p == '-' || *p == '+')
         ++p;
      while (*p >= '0' && *p <= '9')
         exponent = exponent*10 + (*p++ - '0');






         power = stb__clex_pow(10, exponent);
      if (sign)
         value /= power;
      else
         value *= power;
   }
   *q = p;
   return value;
}
