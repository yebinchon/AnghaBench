
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double strtod (char const*,int ) ;

double
atof(const char *ascii)
{
  return strtod(ascii, 0);
}
