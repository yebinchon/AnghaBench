
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _ismbblead (unsigned char) ;

size_t _mbsnccnt(const unsigned char *str, size_t n)
{
 unsigned char *s = (unsigned char *)str;
 size_t cnt = 0;
 while(*s != 0 && n > 0) {
  if (_ismbblead(*s) )
   s++;
  else
   n--;
  s++;
  cnt++;
 }

 return cnt;
}
