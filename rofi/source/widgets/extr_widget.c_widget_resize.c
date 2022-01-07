
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {short w; short h; int (* resize ) (TYPE_1__*,short,short) ;} ;
typedef TYPE_1__ widget ;


 int stub1 (TYPE_1__*,short,short) ;
 int widget_queue_redraw (TYPE_1__*) ;

void widget_resize ( widget *widget, short w, short h )
{
    if ( widget != ((void*)0) ) {
        if ( widget->resize != ((void*)0) ) {
            if ( widget->w != w || widget->h != h ) {
                widget->resize ( widget, w, h );
            }
        }
        else {
            widget->w = w;
            widget->h = h;
        }

        widget_queue_redraw ( widget );
    }
}
