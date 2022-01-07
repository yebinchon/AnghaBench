
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,scalar_t__) ;
 scalar_t__ strlen (char*) ;

void
CompressPath(char *const dst, const char *const src, const size_t dsize)
{
 int c;
 const char *s;
 char *d, *lim;
 char *a, *b;

 if (src[0] == '\0') {
  *dst = '\0';
  return;
 }

 s = src;
 d = dst;
 lim = d + dsize - 1;
 for (;;) {
  c = *s;
  if (c == '.') {
   if (((s == src) || (s[-1] == '/')) && ((s[1] == '/') || (s[1] == '\0'))) {

    if (s[1] == '/')
     ++s;
    ++s;
   } else if (d < lim) {
    *d++ = *s++;
   } else {
    ++s;
   }
  } else if (c == '/') {

   if (d < lim)
    *d++ = *s++;
   else
    ++s;
   for (;;) {
    c = *s;
    if (c == '/') {

     ++s;
    } else if (c == '.') {
     c = s[1];
     if (c == '/') {

      s += 2;
     } else if (c == '\0') {

      s += 1;
     } else {
      break;
     }
    } else {
     break;
    }
   }
  } else if (c == '\0') {

   if ((d[-1] == '/') && (d > (dst + 1)))
    d[-1] = '\0';
   *d = '\0';
   break;
  } else if (d < lim) {
   *d++ = *s++;
  } else {
   ++s;
  }
 }
 a = dst;






 while (*a != '\0') {
  b = a;
  for (;;) {

   if (*a == '\0')
    return;
   if (*a == '/') {
    ++a;
    break;
   }
   ++a;
  }
  if ((b[0] == '.') && (b[1] == '.')) {
   if (b[2] == '/') {



    continue;
   }
  }
  if ((a[0] == '.') && (a[1] == '.')) {
   if (a[2] == '/') {

    if ((b == dst) && (*dst == '/'))
     (void) memmove(b + 1, a + 3, strlen(a + 3) + 1);
    else
     (void) memmove(b, a + 3, strlen(a + 3) + 1);
    a = dst;
   } else if (a[2] == '\0') {

    if ((b <= dst + 1) && (*dst == '/'))
     dst[1] = '\0';
    else
     b[-1] = '\0';
    a = dst;
   } else {




   }
  }
 }
}
