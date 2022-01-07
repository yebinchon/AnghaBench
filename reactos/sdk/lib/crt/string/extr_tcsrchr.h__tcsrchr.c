
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ _XINT ;
typedef scalar_t__ const _TCHAR ;



_TCHAR * _tcsrchr(const _TCHAR * s, _XINT c)
{
 _TCHAR cc = c;
 const _TCHAR * sp = (_TCHAR *)0;

 while(*s)
 {
  if(*s == cc) sp = s;
  s ++;
 }

 if(cc == 0) sp = s;

 return (_TCHAR *)sp;
}
