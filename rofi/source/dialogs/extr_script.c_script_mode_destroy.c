
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * private_data; } ;
struct TYPE_5__ {unsigned int cmd_list_length; struct TYPE_5__* active_list; struct TYPE_5__* urgent_list; struct TYPE_5__* prompt; struct TYPE_5__* message; struct TYPE_5__* cmd_list; struct TYPE_5__* icon_name; struct TYPE_5__* entry; } ;
typedef TYPE_1__ ScriptModePrivateData ;
typedef TYPE_2__ Mode ;


 int g_free (TYPE_1__*) ;

__attribute__((used)) static void script_mode_destroy ( Mode *sw )
{
    ScriptModePrivateData *rmpd = (ScriptModePrivateData *) sw->private_data;
    if ( rmpd != ((void*)0) ) {
        for ( unsigned int i = 0; i < rmpd->cmd_list_length; i++ ){
            g_free ( rmpd->cmd_list[i].entry );
            g_free ( rmpd->cmd_list[i].icon_name );
        }
        g_free ( rmpd->cmd_list );
        g_free ( rmpd->message );
        g_free ( rmpd->prompt );
        g_free ( rmpd->urgent_list );
        g_free ( rmpd->active_list );
        g_free ( rmpd );
        sw->private_data = ((void*)0);
    }
}
