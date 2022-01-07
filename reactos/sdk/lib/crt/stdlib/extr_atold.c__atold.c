
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long double _strtold (char const*,int ) ;

long double
_atold(const char *ascii)
{
  return _strtold(ascii, 0);
}
