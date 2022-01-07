
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcoll (char const*,char const*) ;
 unsigned long long strtoull (char const*,int *,int) ;

int vlc_filenamecmp(const char *a, const char *b)
{
    size_t i;
    char ca, cb;
    for (i = 0; (ca = a[i]) == (cb = b[i]); i++)
        if (ca == '\0')
            return 0;

    if ((unsigned)(ca - '0') > 9 || (unsigned)(cb - '0') > 9)
        return strcoll(a, b);

    unsigned long long ua = strtoull(a + i, ((void*)0), 10);
    unsigned long long ub = strtoull(b + i, ((void*)0), 10);




    if (ua == ub)
        return strcoll(a, b);

    return (ua > ub) ? +1 : -1;
}
