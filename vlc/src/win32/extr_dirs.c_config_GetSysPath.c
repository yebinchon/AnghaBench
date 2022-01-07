
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_sysdir_t ;







 int asprintf (char**,char*,char*,char const*) ;
 char* config_GetDataDir () ;
 char* config_GetLibDir () ;
 int free (char*) ;
 scalar_t__ unlikely (int) ;
 int vlc_assert_unreachable () ;

char *config_GetSysPath(vlc_sysdir_t type, const char *filename)
{
    char *dir = ((void*)0);

    switch (type)
    {
        case 131:
            dir = config_GetDataDir();
            break;
        case 129:
        case 130:
            dir = config_GetLibDir();
            break;
        case 128:
            break;
        case 132:
            dir = config_GetSysPath(131, "locale");
            break;
        default:
            vlc_assert_unreachable();
    }

    if (filename == ((void*)0) || unlikely(dir == ((void*)0)))
        return dir;

    char *path;
    if (unlikely(asprintf(&path, "%s/%s", dir, filename) == -1))
        path = ((void*)0);
    free(dir);
    return path;
}
