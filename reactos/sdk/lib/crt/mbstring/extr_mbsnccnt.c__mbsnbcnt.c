
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ismbblead (unsigned char) ;

size_t _mbsnbcnt(const unsigned char *str, size_t n)
{
 unsigned char *s = (unsigned char *)str;
 while(*s != 0 && n > 0) {
  if (!_ismbblead(*s) )
   n--;
  s++;
 }

 return (size_t)(s - str);
}
