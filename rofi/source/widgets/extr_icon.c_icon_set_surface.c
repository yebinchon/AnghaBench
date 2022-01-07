
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * icon; scalar_t__ icon_fetch_id; } ;
typedef TYPE_1__ icon ;
typedef int cairo_surface_t ;


 int WIDGET (TYPE_1__*) ;
 int cairo_surface_destroy (int *) ;
 int cairo_surface_reference (int *) ;
 int widget_queue_redraw (int ) ;

void icon_set_surface ( icon *icon, cairo_surface_t *surf )
{
    icon->icon_fetch_id = 0;
    if ( icon->icon ) {
        cairo_surface_destroy ( icon->icon );
        icon->icon = ((void*)0);
    }
    if ( surf ) {
        cairo_surface_reference ( surf );
        icon->icon = surf;
    }
    widget_queue_redraw ( WIDGET ( icon ) );
}
