
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int direction; } ;
struct TYPE_6__ {scalar_t__ req_elements; TYPE_1__ barview; int selected; } ;
typedef TYPE_2__ listview ;


 int LEFT_TO_RIGHT ;
 int MIN (unsigned int,scalar_t__) ;
 int WIDGET (TYPE_2__*) ;
 int widget_queue_redraw (int ) ;

void listview_set_selected ( listview *lv, unsigned int selected )
{
    if ( lv && lv->req_elements > 0 ) {
        lv->selected = MIN ( selected, lv->req_elements - 1 );
        lv->barview.direction = LEFT_TO_RIGHT;
        widget_queue_redraw ( WIDGET ( lv ) );
    }
}
