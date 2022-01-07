
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalnum (char const) ;

int
strxlen(const char *psz)
{
    int len = 0;
    while (isalnum(*psz) || *psz == '_')
    {
        psz++;
        len++;
    }
    return len;
}
