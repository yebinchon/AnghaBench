
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ gpointer ;
typedef int gchar ;
typedef int gboolean ;
typedef int GString ;
typedef int GMatchInfo ;
typedef int GHashTable ;


 int FALSE ;
 int g_free (int *) ;
 int * g_hash_table_lookup (int *,int *) ;
 int * g_match_info_fetch (int const*,int) ;
 int g_match_info_get_match_count (int const*) ;
 int g_string_append (int *,int *) ;

__attribute__((used)) static gboolean helper_eval_cb2 ( const GMatchInfo *info, GString *res, gpointer data )
{
    gchar *match;

    int num_match = g_match_info_get_match_count(info);

    if ( num_match == 5 ) {
        match = g_match_info_fetch ( info, 4);
        if ( match != ((void*)0) ) {

            gchar *r = g_hash_table_lookup ( (GHashTable *) data, match );
            if ( r != ((void*)0) ) {

                g_string_append ( res, r );
            }

            g_free ( match );
        }
    }

    else if ( num_match == 4 ) {
        match = g_match_info_fetch ( info, 2);
        if ( match != ((void*)0) ) {

            gchar *r = g_hash_table_lookup ( (GHashTable *) data, match );
            if ( r != ((void*)0) ) {

                gchar *prefix = g_match_info_fetch (info, 1);
                g_string_append ( res, prefix );
                g_free (prefix );

                g_string_append ( res, r );

                gchar *post = g_match_info_fetch (info, 3);
                g_string_append ( res, post );
                g_free (post );
            }

            g_free ( match );
        }
    }


    return FALSE;
}
