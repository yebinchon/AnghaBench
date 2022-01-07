
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int listview_mouse_activated_cb ;
struct TYPE_3__ {void* mouse_activated_data; int mouse_activated; } ;
typedef TYPE_1__ listview ;



void listview_set_mouse_activated_cb ( listview *lv, listview_mouse_activated_cb cb, void *udata )
{
    if ( lv ) {
        lv->mouse_activated = cb;
        lv->mouse_activated_data = udata;
    }
}
