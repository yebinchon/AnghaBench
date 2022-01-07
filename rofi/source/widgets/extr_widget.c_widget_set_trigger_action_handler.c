
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int widget_trigger_action_cb ;
struct TYPE_3__ {void* trigger_action_cb_data; int trigger_action; } ;
typedef TYPE_1__ widget ;



void widget_set_trigger_action_handler ( widget *wid, widget_trigger_action_cb cb, void * cb_data )
{
    if ( wid == ((void*)0) ) {
        return;
    }
    wid->trigger_action = cb;
    wid->trigger_action_cb_data = cb_data;
}
