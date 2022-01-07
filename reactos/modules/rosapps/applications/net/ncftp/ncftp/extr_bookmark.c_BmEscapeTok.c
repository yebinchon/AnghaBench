
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isprint (int) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static char *
BmEscapeTok(char *dst, size_t dsize, char *src)
{
 char *dlim = dst + dsize - 1;
 char *dst0 = dst;
 int c;

 while ((c = *src) != '\0') {
  src++;
  if ((c == '\\') || (c == ',') || (c == '$')) {

   if ((dst + 1) < dlim) {
    *dst++ = '\\';
    *dst++ = c;
   }
  } else if (!isprint(c)) {

   if ((dst + 2) < dlim) {
    (void) sprintf(dst, "$%02x", c);
    dst += 3;
   }
  } else {
   if (dst < dlim)
    *dst++ = c;
  }
 }
 *dst = '\0';
 return (dst0);
}
