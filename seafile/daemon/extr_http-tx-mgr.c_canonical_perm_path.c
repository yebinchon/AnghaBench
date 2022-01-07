
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* g_strconcat (char*,char*,int *) ;
 char* g_strdup (char const*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *
canonical_perm_path (const char *path)
{
    int len = strlen(path);
    char *copy, *ret;

    if (strcmp (path, "/") == 0)
        return g_strdup(path);

    if (path[0] == '/' && path[len-1] != '/')
        return g_strdup(path);

    copy = g_strdup(path);

    if (copy[len-1] == '/')
        copy[len-1] = 0;

    if (copy[0] != '/')
        ret = g_strconcat ("/", copy, ((void*)0));
    else
        ret = copy;

    return ret;
}
