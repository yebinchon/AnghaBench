
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int * gpointer ;
typedef int gboolean ;
struct TYPE_4__ {int message; } ;
typedef int RofiHelperExecuteContext ;
typedef int * GSpawnChildSetupFunc ;
typedef TYPE_1__ GError ;


 int FALSE ;
 int G_SPAWN_SEARCH_PATH ;
 int TRUE ;
 int display_startup_notification (int *,int **,int **) ;
 int g_error_free (TYPE_1__*) ;
 int g_free (char*) ;
 int g_spawn_async (char const*,char**,int *,int ,int *,int *,int *,TYPE_1__**) ;
 char* g_strdup_printf (char*,char const*,char const*,int ) ;
 int g_strfreev (char**) ;
 int rofi_view_error_dialog (char*,int ) ;

gboolean helper_execute ( const char *wd, char **args, const char *error_precmd, const char *error_cmd, RofiHelperExecuteContext *context )
{
    gboolean retv = TRUE;
    GError *error = ((void*)0);

    GSpawnChildSetupFunc child_setup = ((void*)0);
    gpointer user_data = ((void*)0);

    display_startup_notification ( context, &child_setup, &user_data );

    g_spawn_async ( wd, args, ((void*)0), G_SPAWN_SEARCH_PATH, child_setup, user_data, ((void*)0), &error );
    if ( error != ((void*)0) ) {
        char *msg = g_strdup_printf ( "Failed to execute: '%s%s'\nError: '%s'", error_precmd, error_cmd, error->message );
        rofi_view_error_dialog ( msg, FALSE );
        g_free ( msg );

        g_error_free ( error );
        retv = FALSE;
    }


    g_strfreev ( args );
    return retv;
}
