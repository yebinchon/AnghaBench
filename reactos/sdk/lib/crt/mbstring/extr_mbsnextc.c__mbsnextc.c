
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _ismbblead (unsigned char const) ;

unsigned int _mbsnextc (const unsigned char *str)
{
  if(_ismbblead(*str))
    return *str << 8 | str[1];
  return *str;
}
