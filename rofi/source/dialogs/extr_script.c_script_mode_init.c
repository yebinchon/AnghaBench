
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ ed; int * private_data; } ;
struct TYPE_6__ {int cmd_list_length; int cmd_list; } ;
typedef TYPE_1__ ScriptModePrivateData ;
typedef TYPE_2__ Mode ;


 int TRUE ;
 TYPE_1__* g_malloc0 (int) ;
 int get_script_output (TYPE_2__*,char*,int *,int *) ;

__attribute__((used)) static int script_mode_init ( Mode *sw )
{
    if ( sw->private_data == ((void*)0) ) {
        ScriptModePrivateData *pd = g_malloc0 ( sizeof ( *pd ) );
        sw->private_data = (void *) pd;
        pd->cmd_list = get_script_output ( sw, (char *) sw->ed, ((void*)0), &( pd->cmd_list_length ) );
    }
    return TRUE;
}
