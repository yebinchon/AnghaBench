
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ xcb_pixmap_t ;
typedef int cairo_surface_t ;
struct TYPE_4__ {int height_in_pixels; int width_in_pixels; } ;
struct TYPE_3__ {TYPE_2__* screen; int connection; } ;


 size_t ESETROOT_PMAP_ID ;
 scalar_t__ XCB_NONE ;
 int * cairo_xcb_surface_create (int ,scalar_t__,int ,int ,int ) ;
 scalar_t__ get_root_pixmap (int ,TYPE_2__*,int ) ;
 int * netatoms ;
 int root_visual ;
 TYPE_1__* xcb ;

cairo_surface_t * x11_helper_get_bg_surface ( void )
{
    xcb_pixmap_t pm = get_root_pixmap ( xcb->connection, xcb->screen, netatoms[ESETROOT_PMAP_ID] );
    if ( pm == XCB_NONE ) {
        return ((void*)0);
    }
    return cairo_xcb_surface_create ( xcb->connection, pm, root_visual,
                                      xcb->screen->width_in_pixels, xcb->screen->height_in_pixels );
}
