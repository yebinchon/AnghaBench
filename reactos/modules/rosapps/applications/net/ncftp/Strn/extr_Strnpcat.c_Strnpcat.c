
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char* const) ;

char *
Strnpcat(char *const dst, const char *const src, size_t n)
{
 register size_t i;
 register char *d;
 register const char *s;
 register char c;
 char *ret;

 if (n != 0 && ((i = strlen(dst)) < (n - 1))) {
  d = dst + i;
  s = src;






  for (++i; i<n; i++) {
   c = *s++;
   if (c == '\0') {
    ret = d;
    *d++ = c;





    return ret;
   }
   *d++ = c;
  }



  *d = 0;
  return (d);
 }
 return (dst);
}
