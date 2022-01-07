
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {unsigned int req_elements; int selected; } ;
typedef TYPE_1__ listview ;


 int WIDGET (TYPE_1__*) ;
 int listview_recompute_elements (TYPE_1__*) ;
 int listview_set_selected (TYPE_1__*,int ) ;
 int widget_queue_redraw (int ) ;

void listview_set_num_elements ( listview *lv, unsigned int rows )
{
    if ( lv == ((void*)0) ) {
        return;
    }
    lv->req_elements = rows;
    listview_set_selected ( lv, lv->selected );
    listview_recompute_elements ( lv );
    widget_queue_redraw ( WIDGET ( lv ) );
}
