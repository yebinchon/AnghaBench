
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int message; } ;
typedef int GRegex ;
typedef int GHashTable ;
typedef TYPE_1__ GError ;


 int FALSE ;
 int g_error_free (TYPE_1__*) ;
 int g_free (char*) ;
 int * g_regex_new (char*,int ,int ,TYPE_1__**) ;
 char* g_regex_replace_eval (int *,char*,int,int ,int ,int ,int *,TYPE_1__**) ;
 int g_regex_unref (int *) ;
 char* g_strdup_printf (char*,char*,int ) ;
 int helper_eval_cb2 ;
 int rofi_view_error_dialog (char*,int ) ;

char *helper_string_replace_if_exists_v ( char * string, GHashTable *h )
{
    GError *error = ((void*)0);
    char *res = ((void*)0);


    GRegex *reg = g_regex_new ( "\\[(.*)({[-\\w]+})(.*)\\]|({[\\w-]+})", 0, 0, &error );
    if ( error == ((void*)0) ){
        res = g_regex_replace_eval ( reg, string, -1, 0, 0, helper_eval_cb2, h, &error );
    }

    g_regex_unref ( reg );

    if ( error != ((void*)0) ) {
        char *msg = g_strdup_printf ( "Failed to parse: '%s'\nError: '%s'", string, error->message );
        rofi_view_error_dialog ( msg, FALSE );
        g_free ( msg );

        g_error_free ( error );
        g_free ( res );
        return ((void*)0);
    }
    return res;
}
