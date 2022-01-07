
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ data; } ;
typedef int GString ;
typedef TYPE_1__ GList ;


 int TIMINGS_STOP () ;
 int TRUE ;
 int bindings ;
 int * config_path ;
 int * config_path_new ;
 int config_xresource_free () ;
 int display_cleanup () ;
 int g_free (int *) ;
 TYPE_1__* g_list_first (scalar_t__) ;
 int g_list_free (scalar_t__) ;
 TYPE_1__* g_list_next (TYPE_1__*) ;
 int g_main_loop_unref (int *) ;
 int g_string_free (int *,int ) ;
 scalar_t__ list_of_error_msgs ;
 int * main_loop ;
 int mode_destroy (int ) ;
 int * modi ;
 int nk_bindings_free (int ) ;
 unsigned int num_modi ;
 int rofi_collect_modi_destroy () ;
 int rofi_icon_fetcher_destroy () ;
 int * rofi_theme ;
 int rofi_theme_free (int *) ;
 int rofi_view_workers_finalize () ;

__attribute__((used)) static void cleanup ()
{
    for ( unsigned int i = 0; i < num_modi; i++ ) {
        mode_destroy ( modi[i] );
    }
    rofi_view_workers_finalize ();
    if ( main_loop != ((void*)0) ) {
        g_main_loop_unref ( main_loop );
        main_loop = ((void*)0);
    }

    display_cleanup ();

    nk_bindings_free ( bindings );


    config_xresource_free ();
    g_free ( modi );

    g_free ( config_path );
    g_free ( config_path_new );

    if ( list_of_error_msgs ) {
        for ( GList *iter = g_list_first ( list_of_error_msgs );
              iter != ((void*)0); iter = g_list_next ( iter ) ) {
            g_string_free ( (GString *) iter->data, TRUE );
        }
        g_list_free ( list_of_error_msgs );
    }

    if ( rofi_theme ) {
        rofi_theme_free ( rofi_theme );
        rofi_theme = ((void*)0);
    }
    TIMINGS_STOP ();
    rofi_collect_modi_destroy ( );
    rofi_icon_fetcher_destroy ( );
}
