
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {char* name; } ;


 int ce_namelen (struct cache_entry const*) ;
 scalar_t__ memcmp (char const*,char const*,int) ;
 int strlen (char const*) ;

int ce_path_match(const struct cache_entry *ce, const char **pathspec)
{
    const char *match, *name;
    int len;

    if (!pathspec)
        return 1;

    len = ce_namelen(ce);
    name = ce->name;
    while ((match = *pathspec++) != ((void*)0)) {
        int matchlen = strlen(match);
        if (matchlen > len)
            continue;
        if (memcmp(name, match, matchlen))
            continue;
        if (matchlen && name[matchlen-1] == '/')
            return 1;
        if (name[matchlen] == '/' || !name[matchlen])
            return 1;
        if (!matchlen)
            return 1;
    }
    return 0;
}
