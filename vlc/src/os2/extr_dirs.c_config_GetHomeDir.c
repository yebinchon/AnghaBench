
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FromLocaleDup (char const*) ;
 char* config_GetLibDir () ;
 char* getenv (char*) ;

__attribute__((used)) static char *config_GetHomeDir (void)
{
    const char *home = getenv ("HOME");
    if (home != ((void*)0))
        return FromLocaleDup (home);

    return config_GetLibDir();
}
