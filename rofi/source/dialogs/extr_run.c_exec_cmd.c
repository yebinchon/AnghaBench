
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int gsize ;
typedef char gchar ;
struct TYPE_7__ {int message; } ;
struct TYPE_6__ {int * name; } ;
typedef TYPE_1__ RofiHelperExecuteContext ;
typedef TYPE_2__ GError ;


 int RUN_CACHE_FILE ;
 int cache_dir ;
 char* g_build_filename (int ,int ,int *) ;
 int g_error_free (TYPE_2__*) ;
 int g_free (char*) ;
 char* g_locale_from_utf8 (char const*,int,int *,int *,TYPE_2__**) ;
 int g_warning (char*,int ) ;
 scalar_t__ helper_execute_command (int *,char*,int,TYPE_1__*) ;
 int history_remove (char*,char const*) ;
 int history_set (char*,char const*) ;

__attribute__((used)) static void exec_cmd ( const char *cmd, int run_in_term )
{
    GError *error = ((void*)0);
    if ( !cmd || !cmd[0] ) {
        return;
    }
    gsize lf_cmd_size = 0;
    gchar *lf_cmd = g_locale_from_utf8 ( cmd, -1, ((void*)0), &lf_cmd_size, &error );
    if ( error != ((void*)0) ) {
        g_warning ( "Failed to convert command to locale encoding: %s", error->message );
        g_error_free ( error );
        return;
    }

    char *path = g_build_filename ( cache_dir, RUN_CACHE_FILE, ((void*)0) );
    RofiHelperExecuteContext context = { .name = ((void*)0) };

    if ( helper_execute_command ( ((void*)0), lf_cmd, run_in_term, run_in_term ? &context : ((void*)0) ) ) {





        history_set ( path, cmd );
    }
    else {
        history_remove ( path, cmd );
    }
    g_free ( path );
    g_free ( lf_cmd );
}
