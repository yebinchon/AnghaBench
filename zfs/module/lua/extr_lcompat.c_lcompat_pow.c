
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64_t ;



int64_t
lcompat_pow(int64_t x, int64_t y)
{
 int64_t result = 1;
 if (y < 0)
  return (0);

 while (y) {
  if (y & 1)
   result *= x;
  y >>= 1;
  x *= x;
 }
 return (result);
}
