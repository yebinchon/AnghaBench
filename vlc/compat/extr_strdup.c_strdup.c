
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;

char *strdup (const char *str)
{
    size_t len = strlen (str) + 1;
    char *res = malloc (len);
    if (res)
        memcpy (res, str, len);
    return res;
}
