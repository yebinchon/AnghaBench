
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int direction; } ;
struct TYPE_6__ {int req_elements; int selected; TYPE_1__ barview; int cycle; } ;
typedef TYPE_2__ listview ;


 int LEFT_TO_RIGHT ;
 int MIN (int,int) ;
 int WIDGET (TYPE_2__*) ;
 int widget_queue_redraw (int ) ;

__attribute__((used)) static void listview_nav_down_int ( listview *lv )
{
    if ( lv == ((void*)0) ) {
        return;
    }
    if ( lv->req_elements == 0 || ( lv->selected == ( lv->req_elements - 1 ) && !lv->cycle ) ) {
        return;
    }
    lv->selected = lv->selected < lv->req_elements - 1 ? MIN ( lv->req_elements - 1, lv->selected + 1 ) : 0;
    lv->barview.direction = LEFT_TO_RIGHT;
    widget_queue_redraw ( WIDGET ( lv ) );
}
