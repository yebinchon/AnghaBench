
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static float acrobat_compatible_atof(char *s)
{
 int neg = 0;
 int i = 0;

 while (*s == '-')
 {
  neg = 1;
  ++s;
 }
 while (*s == '+')
 {
  ++s;
 }

 while (*s >= '0' && *s <= '9')
 {




  i = i * 10 + (*s - '0');
  ++s;
 }

 if (*s == '.')
 {
  float v = i;
  float n = 0;
  float d = 1;
  ++s;
  while (*s >= '0' && *s <= '9')
  {
   n = 10 * n + (*s - '0');
   d = 10 * d;
   ++s;
  }
  v += n / d;
  return neg ? -v : v;
 }
 else
 {
  return neg ? -i : i;
 }
}
