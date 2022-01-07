
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SIZEOF_REV ;
 scalar_t__ isspace (char const) ;
 int string_ncopy_do (char*,size_t,char const*,size_t) ;

void
string_copy_rev(char *dst, const char *src)
{
 size_t srclen;

 if (!*src)
  return;

 for (srclen = 0; srclen < SIZEOF_REV; srclen++)
  if (!src[srclen] || isspace(src[srclen]))
   break;

 string_ncopy_do(dst, SIZEOF_REV, src, srclen);
}
