
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* g_strconcat (char*,char const*,int *) ;
 char* g_strdup (char const*) ;
 int strlen (char const*) ;

char*
format_dir_path (const char *path)
{
    int path_len = strlen (path);
    char *rpath;
    if (path[0] != '/') {
        rpath = g_strconcat ("/", path, ((void*)0));
        path_len++;
    } else {
        rpath = g_strdup (path);
    }
    while (path_len > 1 && rpath[path_len-1] == '/') {
        rpath[path_len-1] = '\0';
        path_len--;
    }

    return rpath;
}
