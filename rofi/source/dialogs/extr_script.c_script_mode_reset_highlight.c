
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ private_data; } ;
struct TYPE_4__ {int * active_list; scalar_t__ num_active_list; int * urgent_list; scalar_t__ num_urgent_list; } ;
typedef TYPE_1__ ScriptModePrivateData ;
typedef TYPE_2__ Mode ;


 int g_free (int *) ;

__attribute__((used)) static void script_mode_reset_highlight ( Mode *sw )
{
    ScriptModePrivateData *rmpd = (ScriptModePrivateData *) sw->private_data;

    rmpd->num_urgent_list = 0;
    g_free ( rmpd->urgent_list );
    rmpd->urgent_list = ((void*)0);
    rmpd->num_active_list = 0;
    g_free ( rmpd->active_list );
    rmpd->active_list = ((void*)0);
}
