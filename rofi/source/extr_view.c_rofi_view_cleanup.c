
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ idle_timeout; scalar_t__ repaint_source; scalar_t__ main_window; int views; int edit_pixmap; int gc; int * edit_surf; int * edit_draw; int * fake_bg; } ;
struct TYPE_3__ {int connection; } ;


 TYPE_2__ CacheState ;
 scalar_t__ XCB_COLORMAP_NONE ;
 scalar_t__ XCB_WINDOW_NONE ;
 int cairo_destroy (int *) ;
 int cairo_surface_destroy (int *) ;
 int g_assert (int ) ;
 int g_debug (char*) ;
 int g_queue_is_empty (int *) ;
 int g_source_remove (scalar_t__) ;
 scalar_t__ map ;
 TYPE_1__* xcb ;
 int xcb_destroy_window (int ,scalar_t__) ;
 int xcb_flush (int ) ;
 int xcb_free_colormap (int ,scalar_t__) ;
 int xcb_free_gc (int ,int ) ;
 int xcb_free_pixmap (int ,int ) ;
 int xcb_unmap_window (int ,scalar_t__) ;

void rofi_view_cleanup ()
{
    g_debug ( "Cleanup." );
    if ( CacheState.idle_timeout > 0 ) {
        g_source_remove ( CacheState.idle_timeout );
        CacheState.idle_timeout = 0;
    }
    if ( CacheState.repaint_source > 0 ) {
        g_source_remove ( CacheState.repaint_source );
        CacheState.repaint_source = 0;
    }
    if ( CacheState.fake_bg ) {
        cairo_surface_destroy ( CacheState.fake_bg );
        CacheState.fake_bg = ((void*)0);
    }
    if ( CacheState.edit_draw ) {
        cairo_destroy ( CacheState.edit_draw );
        CacheState.edit_draw = ((void*)0);
    }
    if ( CacheState.edit_surf ) {
        cairo_surface_destroy ( CacheState.edit_surf );
        CacheState.edit_surf = ((void*)0);
    }
    if ( CacheState.main_window != XCB_WINDOW_NONE ) {
        g_debug ( "Unmapping and free'ing window" );
        xcb_unmap_window ( xcb->connection, CacheState.main_window );
        xcb_free_gc ( xcb->connection, CacheState.gc );
        xcb_free_pixmap ( xcb->connection, CacheState.edit_pixmap );
        xcb_destroy_window ( xcb->connection, CacheState.main_window );
        CacheState.main_window = XCB_WINDOW_NONE;
    }
    if ( map != XCB_COLORMAP_NONE ) {
        xcb_free_colormap ( xcb->connection, map );
        map = XCB_COLORMAP_NONE;
    }
    xcb_flush ( xcb->connection );
    g_assert ( g_queue_is_empty ( &( CacheState.views ) ) );
}
