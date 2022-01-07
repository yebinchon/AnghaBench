
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ _XINT ;
typedef scalar_t__ const _TCHAR ;



_TCHAR * _tcschr(const _TCHAR * s, _XINT c)
{
 _TCHAR cc = c;

 while(*s)
 {
  if(*s == cc) return (_TCHAR *)s;

  s++;
 }

 if(cc == 0) return (_TCHAR *)s;

 return 0;
}
