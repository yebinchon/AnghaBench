
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int var ;


 int asprintf (char**,char*,char const*,...) ;
 char* config_GetHomeDir () ;
 int free (char*) ;
 char* getenv (char*) ;
 int snprintf (char*,int,char*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static char *config_GetAppDir (const char *xdg_name, const char *xdg_default)
{
    char *psz_dir;
    char var[sizeof ("XDG__HOME") + strlen (xdg_name)];


    snprintf (var, sizeof (var), "XDG_%s_HOME", xdg_name);

    const char *home = getenv (var);
    if (home != ((void*)0))
    {
        if (asprintf (&psz_dir, "%s/vlc", home) == -1)
            psz_dir = ((void*)0);
        return psz_dir;
    }

    char *psz_home = config_GetHomeDir ();
    if( psz_home == ((void*)0)
     || asprintf( &psz_dir, "%s/%s/vlc", psz_home, xdg_default ) == -1 )
        psz_dir = ((void*)0);
    free (psz_home);
    return psz_dir;
}
