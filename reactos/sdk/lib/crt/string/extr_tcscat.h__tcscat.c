
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ _TCHAR ;



_TCHAR * _tcscat(_TCHAR * s, const _TCHAR * append)
{
 _TCHAR * save = s;

 for(; *s; ++s);

 while((*s++ = *append++));

 return save;
}
