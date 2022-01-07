
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ sscanf (char*,char*,unsigned int*) ;

void
URLCopyToken(char *dst, size_t dsize, const char *src, size_t howmuch)
{
 char *dlim;
 const char *slim;
 unsigned int hc;
 int c;
 char h[4];

 dlim = dst + dsize - 1;
 slim = src + howmuch;
 while (src < slim) {
  c = *src++;
  if (c == '\0')
   break;
  if (c == '%') {

   if (src < slim + 2) {
    h[0] = *src++;
    h[1] = *src++;
    h[2] = '\0';
    hc = 0xeeff;
    if ((sscanf(h, "%x", &hc) >= 0) && (hc != 0xeeff)) {
     if (dst < dlim) {
      *(unsigned char *)dst = (unsigned char) hc;
      dst++;
     }
    }
   } else {
    break;
   }
  } else {
   *dst++ = (char) c;
  }
 }
 *dst = '\0';
}
