
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static char *
xstrndup(const char *s, size_t n)
{
    char *p;

    p = (char *)malloc(n + 1);
    if (p == ((void*)0))
        return ((void*)0);
    memcpy(p, s, n);
    p[n] = '\0';
    return p;
}
