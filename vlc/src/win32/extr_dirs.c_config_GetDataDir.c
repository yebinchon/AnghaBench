
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* config_GetLibDir () ;
 char* getenv (char*) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *config_GetDataDir(void)
{
    const char *path = getenv ("VLC_DATA_PATH");
    return (path != ((void*)0)) ? strdup (path) : config_GetLibDir ();
}
