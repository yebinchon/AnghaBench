
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;



WCHAR * PICE_wcscpy(WCHAR * str1,const WCHAR * str2)
{
  WCHAR *save = str1;

  for (; (*str1 = *str2); ++str2, ++str1);
  return save;
}
