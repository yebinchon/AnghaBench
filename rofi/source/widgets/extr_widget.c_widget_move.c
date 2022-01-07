
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {short x; short y; } ;
typedef TYPE_1__ widget ;



void widget_move ( widget *widget, short x, short y )
{
    if ( widget != ((void*)0) ) {
        widget->x = x;
        widget->y = y;
    }
}
