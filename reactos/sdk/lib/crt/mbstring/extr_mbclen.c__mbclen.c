
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _ismbblead (unsigned char const) ;

size_t _mbclen(const unsigned char *s)
{
  return _ismbblead(*s) ? 2 : 1;
}
