
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ window; scalar_t__ x; scalar_t__ y; scalar_t__ width; scalar_t__ height; } ;
typedef TYPE_1__ xcb_configure_notify_event_t ;
struct TYPE_12__ {scalar_t__ main_window; int edit_surf; int edit_draw; int edit_pixmap; } ;
struct TYPE_11__ {int depth; } ;
struct TYPE_10__ {int connection; } ;
struct TYPE_9__ {scalar_t__ x; scalar_t__ y; scalar_t__ width; scalar_t__ height; int main_window; } ;
typedef TYPE_2__ RofiViewState ;


 TYPE_7__ CacheState ;
 int WIDGET (int ) ;
 int cairo_create (int ) ;
 int cairo_destroy (int ) ;
 int cairo_surface_destroy (int ) ;
 int cairo_xcb_surface_create (int ,int ,int ,scalar_t__,scalar_t__) ;
 TYPE_6__* depth ;
 int g_debug (char*,scalar_t__,scalar_t__) ;
 int visual ;
 int widget_queue_redraw (int ) ;
 int widget_resize (int ,scalar_t__,scalar_t__) ;
 TYPE_3__* xcb ;
 int xcb_create_pixmap (int ,int ,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int xcb_free_pixmap (int ,int ) ;
 int xcb_generate_id (int ) ;

void rofi_view_temp_configure_notify ( RofiViewState *state, xcb_configure_notify_event_t *xce )
{
    if ( xce->window == CacheState.main_window ) {
        if ( state->x != xce->x || state->y != xce->y ) {
            state->x = xce->x;
            state->y = xce->y;
            widget_queue_redraw ( WIDGET ( state->main_window ) );
        }
        if ( state->width != xce->width || state->height != xce->height ) {
            state->width = xce->width;
            state->height = xce->height;

            cairo_destroy ( CacheState.edit_draw );
            cairo_surface_destroy ( CacheState.edit_surf );

            xcb_free_pixmap ( xcb->connection, CacheState.edit_pixmap );
            CacheState.edit_pixmap = xcb_generate_id ( xcb->connection );
            xcb_create_pixmap ( xcb->connection, depth->depth, CacheState.edit_pixmap, CacheState.main_window,
                                state->width, state->height );

            CacheState.edit_surf = cairo_xcb_surface_create ( xcb->connection, CacheState.edit_pixmap, visual, state->width, state->height );
            CacheState.edit_draw = cairo_create ( CacheState.edit_surf );
            g_debug ( "Re-size window based external request: %d %d", state->width, state->height );
            widget_resize ( WIDGET ( state->main_window ), state->width, state->height );
        }
    }
}
