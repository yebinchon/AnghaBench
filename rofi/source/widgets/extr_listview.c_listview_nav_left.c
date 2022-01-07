
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; scalar_t__ selected; scalar_t__ max_rows; } ;
typedef TYPE_1__ listview ;


 scalar_t__ BARVIEW ;
 int WIDGET (TYPE_1__*) ;
 int listview_nav_up_int (TYPE_1__*) ;
 int widget_queue_redraw (int ) ;

void listview_nav_left ( listview *lv )
{
    if ( lv == ((void*)0) ) {
        return;
    }
    if ( lv->type == BARVIEW ) {
        listview_nav_up_int ( lv );
        return;
    }
    if ( lv->selected >= lv->max_rows ) {
        lv->selected -= lv->max_rows;
        widget_queue_redraw ( WIDGET ( lv ) );
    }
}
