
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t __builtin_strlen (char const*) ;

size_t
GCC_builtin_strlen(const char *str)
{
    return __builtin_strlen(str);
}
