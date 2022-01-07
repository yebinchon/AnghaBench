
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int trigger_action_cb_data; int (* trigger_action ) (TYPE_1__*,int ,int ,int ,int ) ;} ;
typedef TYPE_1__ widget ;
typedef int guint ;
typedef int gint ;
typedef int WidgetTriggerActionResult ;


 int FALSE ;
 int stub1 (TYPE_1__*,int ,int ,int ,int ) ;

WidgetTriggerActionResult widget_trigger_action ( widget *wid, guint action, gint x, gint y )
{
    if ( wid && wid->trigger_action ) {
        return wid->trigger_action ( wid, action, x, y, wid->trigger_action_cb_data );
    }
    return FALSE;
}
