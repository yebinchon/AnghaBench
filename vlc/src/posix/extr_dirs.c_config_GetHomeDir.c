
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char const* pw_dir; } ;
typedef int buf ;


 int _SC_GETPW_R_SIZE_MAX ;
 char* getenv (char*) ;
 scalar_t__ getpwuid_r (int ,struct passwd*,char*,int,struct passwd**) ;
 int getuid () ;
 char* strdup (char const*) ;
 long sysconf (int ) ;

__attribute__((used)) static char *config_GetHomeDir (void)
{

    const char *home = getenv ("HOME");
    if (home != ((void*)0))
        return strdup (home);
    return ((void*)0);
}
