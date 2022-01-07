
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float
fz_css_strtof(char *s, char **endptr)
{
 float sign = 1;
 float v = 0;
 float n = 0;
 float d = 1;

 if (*s == '-')
 {
  sign = -1;
  ++s;
 }

 while (*s >= '0' && *s <= '9')
 {
  v = v * 10 + (*s - '0');
  ++s;
 }

 if (*s == '.')
 {
  ++s;
  while (*s >= '0' && *s <= '9')
  {
   n = n * 10 + (*s - '0');
   d = d * 10;
   ++s;
  }
  v += n / d;
 }

 if (endptr)
  *endptr = s;

 return sign * v;
}
