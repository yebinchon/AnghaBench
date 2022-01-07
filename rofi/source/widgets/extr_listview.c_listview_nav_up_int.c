
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int direction; } ;
struct TYPE_6__ {scalar_t__ req_elements; scalar_t__ selected; TYPE_1__ barview; int cycle; } ;
typedef TYPE_2__ listview ;


 int RIGHT_TO_LEFT ;
 int WIDGET (TYPE_2__*) ;
 int widget_queue_redraw (int ) ;

__attribute__((used)) static void listview_nav_up_int ( listview *lv )
{
    if ( lv == ((void*)0) ) {
        return;
    }
    if ( lv->req_elements == 0 || ( lv->selected == 0 && !lv->cycle ) ) {
        return;
    }
    if ( lv->selected == 0 ) {
        lv->selected = lv->req_elements;
    }
    lv->selected--;
    lv->barview.direction = RIGHT_TO_LEFT;
    widget_queue_redraw ( WIDGET ( lv ) );
}
