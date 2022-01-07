
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * strchr (char const*,int) ;

int
Strntok(char *dstTokenStart, size_t tokenSize, char *buf, const char *delims)
{
 static char *p = ((void*)0);
 char *end;
 char *lim;
 char *dst;
 int len;

 dst = dstTokenStart;
 lim = dst + tokenSize - 1;

 if (buf != ((void*)0)) {
  p = buf;
 } else {
  if (p == ((void*)0)) {
   *dst = '\0';
   return (-1);
  }
 }

 for (end = p; ; end++) {
  if (*end == '\0') {
   p = ((void*)0);
   break;
  }
  if (strchr(delims, (int) *end) != ((void*)0)) {
   ++end;
   p = end;
   break;
  }
  if (dst < lim)
   *dst++ = *end;
 }
 *dst = '\0';
 len = (int) (dst - dstTokenStart);







 return (len);
}
