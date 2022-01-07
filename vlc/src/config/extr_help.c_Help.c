
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_object_t ;


 int PauseConsole () ;
 int ShowConsole () ;
 int Usage (int *,char const*) ;
 char* _ (int ) ;
 int print_help_on_full_help () ;
 int printf (char*,char*) ;
 int strcmp (char const*,char*) ;
 int vlc_usage ;

__attribute__((used)) static void Help (vlc_object_t *p_this, char const *psz_help_name)
{
    ShowConsole();

    if( psz_help_name && !strcmp( psz_help_name, "help" ) )
    {
        printf(_(vlc_usage), "vlc");
        Usage( p_this, "=core" );
        print_help_on_full_help();
    }
    else if( psz_help_name && !strcmp( psz_help_name, "longhelp" ) )
    {
        printf(_(vlc_usage), "vlc");
        Usage( p_this, ((void*)0) );
        print_help_on_full_help();
    }
    else if( psz_help_name && !strcmp( psz_help_name, "full-help" ) )
    {
        printf(_(vlc_usage), "vlc");
        Usage( p_this, ((void*)0) );
    }
    else if( psz_help_name )
    {
        Usage( p_this, psz_help_name );
    }

    PauseConsole();
}
