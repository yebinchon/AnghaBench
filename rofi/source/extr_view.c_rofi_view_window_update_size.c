
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_9__ {int edit_surf; int edit_draw; int edit_pixmap; int main_window; } ;
struct TYPE_8__ {int depth; } ;
struct TYPE_7__ {int connection; } ;
struct TYPE_6__ {int height; int width; int main_window; int y; int x; } ;
typedef TYPE_1__ RofiViewState ;


 TYPE_5__ CacheState ;
 int WIDGET (int ) ;
 int XCB_CONFIG_WINDOW_HEIGHT ;
 int XCB_CONFIG_WINDOW_WIDTH ;
 int XCB_CONFIG_WINDOW_X ;
 int XCB_CONFIG_WINDOW_Y ;
 int cairo_create (int ) ;
 int cairo_destroy (int ) ;
 int cairo_surface_destroy (int ) ;
 int cairo_xcb_surface_create (int ,int ,int ,int ,int ) ;
 TYPE_4__* depth ;
 int g_debug (char*,int ,int ) ;
 int visual ;
 int widget_resize (int ,int ,int ) ;
 TYPE_2__* xcb ;
 int xcb_configure_window (int ,int ,int,int *) ;
 int xcb_create_pixmap (int ,int ,int ,int ,int ,int ) ;
 int xcb_free_pixmap (int ,int ) ;
 int xcb_generate_id (int ) ;

__attribute__((used)) static void rofi_view_window_update_size ( RofiViewState * state )
{
    uint16_t mask = XCB_CONFIG_WINDOW_X | XCB_CONFIG_WINDOW_Y | XCB_CONFIG_WINDOW_WIDTH | XCB_CONFIG_WINDOW_HEIGHT;
    uint32_t vals[] = { state->x, state->y, state->width, state->height };


    xcb_configure_window ( xcb->connection, CacheState.main_window, mask, vals );
    cairo_destroy ( CacheState.edit_draw );
    cairo_surface_destroy ( CacheState.edit_surf );

    xcb_free_pixmap ( xcb->connection, CacheState.edit_pixmap );
    CacheState.edit_pixmap = xcb_generate_id ( xcb->connection );
    xcb_create_pixmap ( xcb->connection, depth->depth,
                        CacheState.edit_pixmap, CacheState.main_window, state->width, state->height );

    CacheState.edit_surf = cairo_xcb_surface_create ( xcb->connection, CacheState.edit_pixmap, visual, state->width, state->height );
    CacheState.edit_draw = cairo_create ( CacheState.edit_surf );

    g_debug ( "Re-size window based internal request: %dx%d.", state->width, state->height );

    widget_resize ( WIDGET ( state->main_window ), state->width, state->height );
}
