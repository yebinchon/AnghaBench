
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int asprintf (char**,char*,char const*) ;
 int free (char*) ;
 char* vlc_uri2path (char*) ;

char *get_path(const char *location)
{
    char *url, *path;




    if (asprintf(&url, "file://%s", location) == -1)
        return ((void*)0);

    path = vlc_uri2path (url);
    free (url);
    return path;
}
