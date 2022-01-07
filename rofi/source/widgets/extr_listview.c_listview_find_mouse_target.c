
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int widget ;
struct TYPE_4__ {TYPE_1__* boxes; scalar_t__ last_offset; scalar_t__ req_elements; int cur_elements; int scrollbar; } ;
typedef TYPE_2__ listview ;
typedef scalar_t__ gint ;
typedef int WidgetType ;
struct TYPE_3__ {int box; } ;


 unsigned int MIN (int ,scalar_t__) ;
 int * WIDGET (int ) ;
 scalar_t__ widget_enabled (int *) ;
 int * widget_find_mouse_target (int *,int ,scalar_t__,scalar_t__) ;
 scalar_t__ widget_get_x_pos (int *) ;
 scalar_t__ widget_get_y_pos (int *) ;
 scalar_t__ widget_intersect (int *,scalar_t__,scalar_t__) ;

__attribute__((used)) static widget *listview_find_mouse_target ( widget *wid, WidgetType type, gint x, gint y )
{
    widget *target = ((void*)0);
    gint rx, ry;
    listview *lv = (listview *) wid;
    if ( widget_enabled ( WIDGET ( lv->scrollbar ) ) && widget_intersect ( WIDGET ( lv->scrollbar ), x, y ) ) {
        rx = x - widget_get_x_pos ( WIDGET ( lv->scrollbar ) );
        ry = y - widget_get_y_pos ( WIDGET ( lv->scrollbar ) );
        target = widget_find_mouse_target ( WIDGET ( lv->scrollbar ), type, rx, ry );
    }

    unsigned int max = MIN ( lv->cur_elements, lv->req_elements - lv->last_offset );
    unsigned int i;
    for ( i = 0; i < max && target == ((void*)0); i++ ) {
        widget *w = WIDGET ( lv->boxes[i].box );
        if ( widget_intersect ( w, x, y ) ) {
            rx = x - widget_get_x_pos ( w );
            ry = y - widget_get_y_pos ( w );
            target = widget_find_mouse_target ( w, type, rx, ry );
        }
    }

    return target;
}
