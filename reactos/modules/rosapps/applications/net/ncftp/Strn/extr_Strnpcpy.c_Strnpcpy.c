
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
Strnpcpy(char *const dst, const char *const src, size_t n)
{
 register char *d;
 register const char *s;
 register char c;
 char *ret;
 register size_t i;

 d = dst;
 if (n != 0) {
  s = src;






  for (i=1; i<n; i++) {
   c = *s++;
   if (c == '\0') {
    ret = d;
    *d++ = c;





    return ret;
   }
   *d++ = c;
  }



  *d = '\0';
  return (d);
 } else {
  *d = 0;
 }
 return (d);
}
