
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gboolean ;
struct TYPE_2__ {int modi; } ;


 int FALSE ;
 int add_mode (char*) ;
 TYPE_1__ config ;
 int g_free (char*) ;
 char* g_strdup (int ) ;
 int help_print_mode_not_found (char*) ;
 char* strtok_r (char*,char const* const,char**) ;

__attribute__((used)) static gboolean setup_modi ( void )
{
    const char *const sep = ",#";
    char *savept = ((void*)0);

    char *switcher_str = g_strdup ( config.modi );

    for ( char *token = strtok_r ( switcher_str, sep, &savept ); token != ((void*)0); token = strtok_r ( ((void*)0), sep, &savept ) ) {
        if ( add_mode ( token ) == -1 ) {
            help_print_mode_not_found ( token );
        }
    }

    g_free ( switcher_str );
    return FALSE;
}
