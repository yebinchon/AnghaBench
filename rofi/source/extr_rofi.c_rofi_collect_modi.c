
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int plugin_path; } ;


 int combi_mode ;
 TYPE_1__ config ;
 int drun_mode ;
 scalar_t__ find_arg (char*) ;
 int find_arg_str (char*,int *) ;
 int g_debug (char*,int ) ;
 int help_keys_mode ;
 int rofi_collect_modi_add (int *) ;
 int rofi_collect_modi_dir (int ) ;
 int run_mode ;
 int ssh_mode ;
 int window_mode ;
 int window_mode_cd ;

__attribute__((used)) static void rofi_collect_modi ( void )
{




    rofi_collect_modi_add ( &run_mode );
    rofi_collect_modi_add ( &ssh_mode );



    rofi_collect_modi_add ( &combi_mode );
    rofi_collect_modi_add ( &help_keys_mode );

    if ( find_arg ( "-no-plugins" ) < 0 ) {
        find_arg_str ( "-plugin-path", &( config.plugin_path ) );
        g_debug ( "Parse plugin path: %s", config.plugin_path );
        rofi_collect_modi_dir ( config.plugin_path );
    }
}
