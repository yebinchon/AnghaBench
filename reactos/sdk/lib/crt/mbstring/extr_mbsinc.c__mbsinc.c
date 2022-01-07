
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _ismbblead (unsigned char const) ;

unsigned char * _mbsinc(const unsigned char *s)
{
 unsigned char *c = (unsigned char *)s;
 if (_ismbblead(*s) )
  c++;
 c++;
 return c;
}
