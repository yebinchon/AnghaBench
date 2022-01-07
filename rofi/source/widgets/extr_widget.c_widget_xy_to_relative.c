
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* parent; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ widget ;
typedef int gint ;



void widget_xy_to_relative ( widget *widget, gint *x, gint *y )
{
    *x -= widget->x;
    *y -= widget->y;
    if ( widget->parent != ((void*)0) ) {
        widget_xy_to_relative ( widget->parent, x, y );
    }
}
