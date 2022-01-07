
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 int strncmp (char const*,char const*,size_t) ;

__attribute__((used)) static int
strrcmp(const char *s1, const char *s2)
{
    size_t m, n;
    m = strlen(s1);
    n = strlen(s2);
    if (n > m)
        return 1;
    return strncmp(s1 + m - n, s2, n);
}
