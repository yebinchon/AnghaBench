
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _ismbblead (unsigned char const) ;
 int _mbclen2 (unsigned char) ;
 int _mbslen (unsigned char*) ;

unsigned char * _mbsnbcat(unsigned char *dst, const unsigned char *src, size_t n)
{
 unsigned char *d;
 const unsigned char *s = src;
 if (n != 0) {
  d = dst + _mbslen(dst);
  d += _mbclen2(*d);

  do {
   if ((*d++ = *s++) == 0)
   {
    while (--n != 0)
     *d++ = 0;
    break;
   }
   if ( !(n==1 && _ismbblead(*s)) )
    n--;
  } while (n > 0);
 }
 return dst;
}
