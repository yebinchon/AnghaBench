
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
Strncpy(char *const dst, const char *const src, const size_t n)
{
 register char *d;
 register const char *s;
 register size_t i;

 d = dst;
 *d = 0;
 if (n != 0) {
  s = src;






  for (i=1; i<n; i++) {
   if ((*d++ = *s++) == 0) {





    return dst;
   }
  }



  *d = 0;
 }
 return (dst);
}
