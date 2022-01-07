
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void url_forward_slash(char *url)
{
    char *p = url;

    while (*p)
    {
        if (*p == '\\')
            *p = '/';
        p++;
    }
}
