
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int widget ;
struct TYPE_3__ {short w; short h; } ;
struct TYPE_4__ {TYPE_1__ widget; } ;
typedef TYPE_2__ icon ;


 int widget_update (int *) ;

__attribute__((used)) static void icon_resize ( widget *widget, short w, short h )
{
    icon *b = (icon *) widget;
    if ( b->widget.w != w || b->widget.h != h ) {
        b->widget.w = w;
        b->widget.h = h;
        widget_update ( widget );
    }
}
