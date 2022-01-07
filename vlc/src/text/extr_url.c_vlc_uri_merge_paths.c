
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,...) ;
 char* strrchr (char const*,char) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static char *vlc_uri_merge_paths(const char *base, const char *ref)
{
    char *str;
    int len;

    if (base == ((void*)0))
        len = asprintf(&str, "/%s", ref);
    else
    {
        const char *end = strrchr(base, '/');

        if (end != ((void*)0))
            end++;
        else
            end = base;

        len = asprintf(&str, "%.*s%s", (int)(end - base), base, ref);
    }

    if (unlikely(len == -1))
        str = ((void*)0);
    return str;
}
