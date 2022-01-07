
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 double wcstod (int const*,int ) ;

double
_wtof(const wchar_t *str)
{
  return wcstod(str, 0);
}
