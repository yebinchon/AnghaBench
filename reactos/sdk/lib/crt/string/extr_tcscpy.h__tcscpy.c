
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _TCHAR ;



_TCHAR * _tcscpy(_TCHAR * to, const _TCHAR * from)
{
 _TCHAR *save = to;

 for (; (*to = *from); ++from, ++to);

 return save;
}
