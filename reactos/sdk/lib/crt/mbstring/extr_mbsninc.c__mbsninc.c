
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _ismbblead (unsigned char const) ;

unsigned char * _mbsninc(const unsigned char *str, size_t n)
{
  if(!str)
    return ((void*)0);

  while (n > 0 && *str)
  {
    if (_ismbblead(*str))
    {
      if (!*(str+1))
         break;
      str++;
    }
    str++;
    n--;
  }

  return (unsigned char*)str;
}
