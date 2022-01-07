
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ type; int selected; int max_rows; int req_elements; } ;
typedef TYPE_1__ listview ;


 scalar_t__ BARVIEW ;
 int WIDGET (TYPE_1__*) ;
 int listview_nav_down_int (TYPE_1__*) ;
 int widget_queue_redraw (int ) ;

void listview_nav_right ( listview *lv )
{
    if ( lv == ((void*)0) ) {
        return;
    }
    if ( lv->type == BARVIEW ) {
        listview_nav_down_int ( lv );
        return;
    }
    if ( ( lv->selected + lv->max_rows ) < lv->req_elements ) {
        lv->selected += lv->max_rows;
        widget_queue_redraw ( WIDGET ( lv ) );
    }
    else if ( lv->selected < ( lv->req_elements - 1 ) ) {



        int col = lv->selected / lv->max_rows;

        int ncol = lv->req_elements / lv->max_rows;

        if ( col != ncol ) {
            lv->selected = lv->req_elements - 1;
            widget_queue_redraw ( WIDGET ( lv ) );
        }
    }
}
