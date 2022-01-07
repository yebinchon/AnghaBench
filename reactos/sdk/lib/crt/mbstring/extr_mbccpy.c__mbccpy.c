
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _ismbblead (unsigned char const) ;

void _mbccpy(unsigned char *dst, const unsigned char *src)
{
  *dst = *src;
  if(_ismbblead(*src))
    *++dst = *++src;
}
