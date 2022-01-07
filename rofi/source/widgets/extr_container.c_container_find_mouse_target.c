
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int widget ;
typedef int gint ;
struct TYPE_4__ {TYPE_2__* child; } ;
typedef TYPE_1__ container ;
typedef int WidgetType ;
struct TYPE_5__ {scalar_t__ y; scalar_t__ x; } ;


 int * widget_find_mouse_target (TYPE_2__*,int ,int ,int ) ;
 int widget_intersect (TYPE_2__*,int ,int ) ;

__attribute__((used)) static widget *container_find_mouse_target ( widget *wid, WidgetType type, gint x, gint y )
{
    container *b = (container *) wid;
    if ( !widget_intersect ( b->child, x, y ) ) {
        return ((void*)0);
    }

    x -= b->child->x;
    y -= b->child->y;
    return widget_find_mouse_target ( b->child, type, x, y );
}
