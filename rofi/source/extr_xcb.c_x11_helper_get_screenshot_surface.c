
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int cairo_surface_t ;
struct TYPE_4__ {TYPE_1__* screen; int connection; } ;
struct TYPE_3__ {int height_in_pixels; int width_in_pixels; } ;


 int * cairo_xcb_surface_create (int ,int ,int ,int ,int ) ;
 int root_visual ;
 TYPE_2__* xcb ;
 int xcb_stuff_get_root_window () ;

cairo_surface_t *x11_helper_get_screenshot_surface ( void )
{
    return cairo_xcb_surface_create ( xcb->connection,
                                      xcb_stuff_get_root_window (), root_visual,
                                      xcb->screen->width_in_pixels, xcb->screen->height_in_pixels );
}
