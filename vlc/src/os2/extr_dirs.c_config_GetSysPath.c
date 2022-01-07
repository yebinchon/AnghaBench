
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_sysdir_t ;


 int LOCALEDIR ;
 int SYSDATADIR ;





 int asprintf (char**,char*,char*,char const*) ;
 char* config_GetDataDir () ;
 char* config_GetLibDir () ;
 char* config_GetLibExecDir () ;
 char* config_GetRealDir (int ) ;
 int free (char*) ;
 scalar_t__ unlikely (int ) ;
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
            dir = config_GetLibDir();
            break;
        case 130:
            dir = config_GetLibExecDir();
            break;
        case 128:
            dir = config_GetRealDir( SYSDATADIR );
            break;
        case 132:
            dir = config_GetRealDir( LOCALEDIR );
            break;
        default:
            vlc_assert_unreachable();
    }

    if (filename == ((void*)0) || unlikely(dir == ((void*)0)))
        return dir;

    char *path;
    asprintf(&path, "%s/%s", dir, filename);
    free(dir);
    return path;
}
