
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 long long strtoll (char const*,int *,int) ;

long long atoll (const char *str)
{
    return strtoll (str, ((void*)0), 10);
}
