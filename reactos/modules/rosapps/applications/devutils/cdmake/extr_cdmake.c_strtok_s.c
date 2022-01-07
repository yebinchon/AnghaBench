
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strchr (char const*,char) ;

char* strtok_s(char *str, const char *delim, char **ctx)
{
    if (delim == ((void*)0) || ctx == ((void*)0) || (str == ((void*)0) && *ctx == ((void*)0)))
    {
        return ((void*)0);
    }

    if (!str)
        str = *ctx;

    while (*str && strchr(delim, *str))
        str++;
    if (!*str)
    {
        *ctx = str;
        return ((void*)0);
    }

    *ctx = str + 1;
    while (**ctx && !strchr(delim, **ctx))
        (*ctx)++;
    if (**ctx)
        *(*ctx)++ = '\0';

    return str;
}
