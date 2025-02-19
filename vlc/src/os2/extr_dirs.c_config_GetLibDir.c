
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FromLocaleDup (char const*) ;
 int PKGLIBDIR ;
 char* config_GetRealDir (int ) ;
 char* getenv (char*) ;

char *config_GetLibDir( void )
{
    const char *path = getenv ("VLC_LIB_PATH");
    if (path)
        return FromLocaleDup( path );

    return config_GetRealDir( PKGLIBDIR );
}
