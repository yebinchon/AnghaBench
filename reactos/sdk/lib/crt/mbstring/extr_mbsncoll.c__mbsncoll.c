
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ismbblead (unsigned char) ;
 int colldif (unsigned char,unsigned char) ;

int _mbsncoll(const unsigned char *str1, const unsigned char *str2, size_t n)
{
 unsigned char *s1 = (unsigned char *)str1;
 unsigned char *s2 = (unsigned char *)str2;

 unsigned short *short_s1, *short_s2;

 int l1, l2;

 if (n == 0)
  return 0;
 do {

  if (*s1 == 0)
   break;

  l1 = _ismbblead(*s1);
  l2 = _ismbblead(*s2);
  if ( !l1 && !l2 ) {

   if (*s1 != *s2)
    return colldif(*s1, *s2);
   else {
    s1 += 1;
    s2 += 1;
    n--;
   }
  }
  else if ( l1 && l2 ){
   short_s1 = (unsigned short *)s1;
   short_s2 = (unsigned short *)s2;
   if ( *short_s1 != *short_s2 )
    return colldif(*short_s1, *short_s2);
   else {
    s1 += 2;
    s2 += 2;
    n--;

   }
  }
  else
   return colldif(*s1, *s2);
 } while (n > 0);
 return 0;
}
