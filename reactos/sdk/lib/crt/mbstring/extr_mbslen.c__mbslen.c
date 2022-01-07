
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _ismbblead (unsigned char const) ;

size_t _mbslen(const unsigned char *str)
{
  size_t len = 0;
  while(*str)
  {
    if (_ismbblead(*str))
    {
      str++;
      if (!*str)
        break;
    }
    str++;
    len++;
  }
  return len;
}
