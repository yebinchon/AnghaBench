
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int run_command; } ;
struct TYPE_5__ {int message; } ;
typedef TYPE_1__ GError ;


 int FALSE ;
 int G_SPAWN_SEARCH_PATH ;
 TYPE_4__ config ;
 int g_error_free (TYPE_1__*) ;
 int g_free (char*) ;
 int g_spawn_async_with_pipes (int *,char**,int *,int ,int *,int *,int *,int *,int*,int *,TYPE_1__**) ;
 char* g_strdup_printf (char*,char const*,int ) ;
 int g_strfreev (char**) ;
 int helper_parse_setup (int ,char***,int*,char*,char const*,char*) ;
 int rofi_view_error_dialog (char*,int ) ;

int execute_generator ( const char * cmd )
{
    char **args = ((void*)0);
    int argv = 0;
    helper_parse_setup ( config.run_command, &args, &argv, "{cmd}", cmd, (char *) 0 );

    int fd = -1;
    GError *error = ((void*)0);
    g_spawn_async_with_pipes ( ((void*)0), args, ((void*)0), G_SPAWN_SEARCH_PATH, ((void*)0), ((void*)0), ((void*)0), ((void*)0), &fd, ((void*)0), &error );

    if ( error != ((void*)0) ) {
        char *msg = g_strdup_printf ( "Failed to execute: '%s'\nError: '%s'", cmd, error->message );
        rofi_view_error_dialog ( msg, FALSE );
        g_free ( msg );

        g_error_free ( error );
        fd = -1;
    }
    g_strfreev ( args );
    return fd;
}
