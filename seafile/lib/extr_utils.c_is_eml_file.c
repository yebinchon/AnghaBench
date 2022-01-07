
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gboolean ;


 int FALSE ;
 scalar_t__ strcasecmp (char const*,char*) ;
 int strlen (char const*) ;

gboolean
is_eml_file (const char *path)
{
    int len = strlen(path);
    const char *ext;

    if (len < 5)
        return FALSE;
    ext = &path[len-4];
    return (strcasecmp (ext, ".eml") == 0);
}
