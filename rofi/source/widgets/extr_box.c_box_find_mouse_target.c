
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ y; scalar_t__ x; int enabled; } ;
typedef TYPE_1__ widget ;
typedef scalar_t__ gint ;
struct TYPE_13__ {int children; } ;
typedef TYPE_2__ box ;
typedef int WidgetType ;
struct TYPE_14__ {scalar_t__ data; } ;
typedef TYPE_3__ GList ;


 TYPE_3__* g_list_first (int ) ;
 TYPE_3__* g_list_next (TYPE_3__*) ;
 TYPE_1__* widget_find_mouse_target (TYPE_1__*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ widget_intersect (TYPE_1__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static widget *box_find_mouse_target ( widget *wid, WidgetType type, gint x, gint y )
{
    box *b = (box *) wid;
    for ( GList *iter = g_list_first ( b->children ); iter != ((void*)0); iter = g_list_next ( iter ) ) {
        widget * child = (widget *) iter->data;
        if ( !child->enabled ) {
            continue;
        }
        if ( widget_intersect ( child, x, y ) ) {
            gint rx = x - child->x;
            gint ry = y - child->y;
            widget *target = widget_find_mouse_target ( child, type, rx, ry );
            if ( target != ((void*)0) ) {
                return target;
            }
        }
    }
    return ((void*)0);
}
