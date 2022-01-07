
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_sysdir_t ;




 int asprintf (char**,char*,char*,char const*) ;
 char* config_GetLibDir () ;
 int free (char*) ;
 char* strdup (char*) ;
 scalar_t__ unlikely (int) ;

char *config_GetSysPath(vlc_sysdir_t type, const char *filename)
{
    char *dir = ((void*)0);

    switch (type)
    {
        case 128:
            dir = strdup("/system/usr/share");
            break;
        case 129:
            dir = config_GetLibDir();
            break;
        default:
            break;
    }

    if (filename == ((void*)0) || dir == ((void*)0))
        return dir;

    char *path;
    if (unlikely(asprintf(&path, "%s/%s", dir, filename) == -1))
        path = ((void*)0);
    free(dir);
    return path;
}
