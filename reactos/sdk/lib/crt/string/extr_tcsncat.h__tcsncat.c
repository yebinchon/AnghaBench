
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ _TCHAR ;



_TCHAR * _tcsncat(_TCHAR * dst, const _TCHAR * src, size_t n)
{
 if(n != 0)
 {
  _TCHAR * d = dst;
  const _TCHAR * s = src;

  while(*d != 0) ++ d;

  do
  {
   if((*d = *s++) == 0) break;

   ++ d;
  }
  while (--n != 0);

  *d = 0;
 }

 return dst;
}
