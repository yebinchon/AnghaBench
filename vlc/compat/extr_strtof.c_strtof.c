
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float strtod (char const*,char**) ;

float strtof (const char *str, char **end)
{
    return strtod (str, end);
}
