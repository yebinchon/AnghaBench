
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char* const) ;

char *
Strncat(char *const dst, const char *const src, const size_t n)
{
 register size_t i;
 register char *d;
 register const char *s;

 if (n != 0 && ((i = strlen(dst)) < (n - 1))) {
  d = dst + i;
  s = src;






  for (++i; i<n; i++) {
   if ((*d++ = *s++) == 0) {





    return dst;
   }
  }



  *d = 0;
 }
 return (dst);
}
