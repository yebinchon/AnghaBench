
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int xcb_window_t ;
struct TYPE_11__ {int height; int width; scalar_t__ y; scalar_t__ dst_y; scalar_t__ x; scalar_t__ dst_x; } ;
typedef TYPE_2__ xcb_translate_coordinates_reply_t ;
typedef int xcb_translate_coordinates_cookie_t ;
typedef TYPE_2__ xcb_get_geometry_reply_t ;
typedef int xcb_get_geometry_cookie_t ;
typedef int xcb_drawable_t ;
struct TYPE_12__ {int h; int w; scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_4__ workarea ;
struct TYPE_13__ {int connection; TYPE_1__* screen; } ;
struct TYPE_10__ {int root; } ;


 int FALSE ;
 int TRUE ;
 int free (TYPE_2__*) ;
 TYPE_7__* xcb ;
 int xcb_get_geometry (int ,int ) ;
 TYPE_2__* xcb_get_geometry_reply (int ,int ,int *) ;
 int xcb_translate_coordinates (int ,int ,int ,scalar_t__,scalar_t__) ;
 TYPE_2__* xcb_translate_coordinates_reply (int ,int ,int *) ;

__attribute__((used)) static int monitor_active_from_winid ( xcb_drawable_t id, workarea *mon )
{
    xcb_window_t root = xcb->screen->root;
    xcb_get_geometry_cookie_t c = xcb_get_geometry ( xcb->connection, id );
    xcb_get_geometry_reply_t *r = xcb_get_geometry_reply ( xcb->connection, c, ((void*)0) );
    if ( r ) {
        xcb_translate_coordinates_cookie_t ct = xcb_translate_coordinates ( xcb->connection, id, root, r->x, r->y );
        xcb_translate_coordinates_reply_t *t = xcb_translate_coordinates_reply ( xcb->connection, ct, ((void*)0) );
        if ( t ) {



            mon->x = t->dst_x - r->x;
            mon->y = t->dst_y - r->y;
            mon->w = r->width;
            mon->h = r->height;
            free ( r );
            free ( t );
            return TRUE;
        }
        free ( r );
    }
    return FALSE;
}
