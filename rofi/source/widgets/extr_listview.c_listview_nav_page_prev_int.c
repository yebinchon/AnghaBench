
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int direction; } ;
struct TYPE_6__ {scalar_t__ type; scalar_t__ last_offset; scalar_t__ selected; scalar_t__ max_elements; TYPE_1__ barview; } ;
typedef TYPE_2__ listview ;


 scalar_t__ BARVIEW ;
 int RIGHT_TO_LEFT ;
 int WIDGET (TYPE_2__*) ;
 int widget_queue_redraw (int ) ;

__attribute__((used)) static void listview_nav_page_prev_int ( listview *lv )
{
    if ( lv == ((void*)0) ) {
        return;
    }
    if ( lv->type == BARVIEW ) {
        if ( lv->last_offset == 0 ) {
            lv->selected = 0;
        }
        else {
            lv->selected = lv->last_offset - 1;
        }
        lv->barview.direction = RIGHT_TO_LEFT;
        widget_queue_redraw ( WIDGET ( lv ) );
        return;
    }

    if ( lv->selected < lv->max_elements ) {
        lv->selected = 0;
    }
    else{
        lv->selected -= ( lv->max_elements );
    }
    widget_queue_redraw ( WIDGET ( lv ) );
}
