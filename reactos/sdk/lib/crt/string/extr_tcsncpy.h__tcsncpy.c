
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _TCHAR ;



_TCHAR * _tcsncpy(_TCHAR * dst, const _TCHAR * src, size_t n)
{
 if(n != 0)
 {
  _TCHAR * d = dst;
  const _TCHAR * s = src;

  do
  {
   if((*d ++ = *s ++) == 0)
   {
    while (-- n != 0) *d ++ = 0;
    break;
   }
  }
  while(-- n != 0);
 }

 return dst;
}
