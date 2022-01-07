
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int _mbsnextc (unsigned char const*) ;

unsigned char * _mbsrchr(const unsigned char *src, unsigned int val)
{
  unsigned int c;
  unsigned char *match = ((void*)0);

  if (!src)
    return ((void*)0);

  while (1)
  {
    c = _mbsnextc(src);
    if (c == val)
      match = (unsigned char*)src;
    if (!c)
      return match;
    src += (c > 255) ? 2 : 1;
  }
}
