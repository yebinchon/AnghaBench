
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strncpy (char*,char const*,size_t) ;

void
string_ncopy_do(char *dst, size_t dstlen, const char *src, size_t srclen)
{
 if (srclen > dstlen - 1)
  srclen = dstlen - 1;

 strncpy(dst, src, srclen);
 dst[srclen] = 0;
}
