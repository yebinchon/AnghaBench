
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _ismbblead (unsigned char) ;

unsigned char * _mbsdec(const unsigned char *str, const unsigned char *cur)
{
 unsigned char *s = (unsigned char *)cur;
 if ( str >= cur )
  return ((void*)0);

 s--;
 if (_ismbblead(*(s-1)) )
  s--;

 return s;
}
