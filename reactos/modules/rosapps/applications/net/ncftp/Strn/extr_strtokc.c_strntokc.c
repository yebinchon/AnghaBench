
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
strntokc(char *dstTokenStart, size_t tokenSize, char *parsestr, const char *delims, char **context)
{
 char *cp;
 const char *cp2;
 char c, c2;
 char *start;
 int len;
 char *dst, *lim;

 dst = dstTokenStart;
 lim = dst + tokenSize - 1;

 if (parsestr == ((void*)0))
  start = *context;
 else
  start = parsestr;

 if ((start == ((void*)0)) || (delims == ((void*)0))) {
  *context = ((void*)0);
  goto done;
 }


 for (cp = start; ; ) {
next1:
  c = *cp++;
  if (c == '\0') {

   *context = ((void*)0);
   goto done;
  }
  for (cp2 = delims; ; ) {
   c2 = (char) *cp2++;
   if (c2 == '\0') {



    start = cp - 1;
    if (dst < lim)
     *dst++ = c;
    goto starttok;
   }
   if (c2 == c) {


    goto next1;
   }
  }

 }

starttok:
 for ( ; ; cp++) {
  c = *cp;
  if (c == '\0') {

   *context = cp;
   break;
  }
  for (cp2 = delims; ; ) {
   c2 = (char) *cp2++;
   if (c2 == '\0') {



    break;
   }
   if (c2 == c) {


    *cp++ = '\0';
    *context = cp;
    goto done;
   }
  }
  if (dst < lim)
   *dst++ = c;
 }

done:
 *dst = '\0';
 len = (int) (dst - dstTokenStart);







 return (len);
}
