
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int cairo_t ;
typedef int cairo_surface_t ;
struct TYPE_3__ {int y; int x; int h; int w; } ;
struct TYPE_4__ {TYPE_1__ mon; scalar_t__ fake_bgrel; int * fake_bg; } ;


 int CAIRO_FORMAT_ARGB32 ;
 scalar_t__ CAIRO_STATUS_SUCCESS ;
 TYPE_2__ CacheState ;
 int TICK_N (char*) ;
 scalar_t__ TRUE ;
 int * cairo_create (int *) ;
 int cairo_destroy (int *) ;
 int * cairo_image_surface_create (int ,int ,int ) ;
 int * cairo_image_surface_create_from_png (char*) ;
 int cairo_paint (int *) ;
 int cairo_set_source_surface (int *,int *,int ,int ) ;
 char* cairo_status_to_string (scalar_t__) ;
 int cairo_surface_destroy (int *) ;
 scalar_t__ cairo_surface_status (int *) ;
 int g_debug (char*,char*) ;
 int g_free (char*) ;
 scalar_t__ g_strcmp0 (char const* const,char*) ;
 char* rofi_expand_path (char const* const) ;
 int * x11_helper_get_bg_surface () ;
 int * x11_helper_get_screenshot_surface () ;

__attribute__((used)) static void rofi_view_setup_fake_transparency ( const char* const fake_background )
{
    if ( CacheState.fake_bg == ((void*)0) ) {
        cairo_surface_t *s = ((void*)0);




        TICK_N ( "Fake start" );
        if ( g_strcmp0 ( fake_background, "real" ) == 0 ) {
            return;
        }
        else if ( g_strcmp0 ( fake_background, "screenshot" ) == 0 ) {
            s = x11_helper_get_screenshot_surface ();
        }
        else if ( g_strcmp0 ( fake_background, "background" ) == 0 ) {
            s = x11_helper_get_bg_surface ();
        }
        else {
            char *fpath = rofi_expand_path ( fake_background );
            g_debug ( "Opening %s to use as background.", fpath );
            s = cairo_image_surface_create_from_png ( fpath );
            CacheState.fake_bgrel = TRUE;
            g_free ( fpath );
        }
        TICK_N ( "Get surface." );
        if ( s != ((void*)0) ) {
            if ( cairo_surface_status ( s ) != CAIRO_STATUS_SUCCESS ) {
                g_debug ( "Failed to open surface fake background: %s",
                          cairo_status_to_string ( cairo_surface_status ( s ) ) );
                cairo_surface_destroy ( s );
                s = ((void*)0);
            }
            else {
                CacheState.fake_bg = cairo_image_surface_create ( CAIRO_FORMAT_ARGB32, CacheState.mon.w, CacheState.mon.h );
                cairo_t *dr = cairo_create ( CacheState.fake_bg );
                if ( CacheState.fake_bgrel ) {
                    cairo_set_source_surface ( dr, s, 0, 0 );
                }
                else {
                    cairo_set_source_surface ( dr, s, -CacheState.mon.x, -CacheState.mon.y );
                }
                cairo_paint ( dr );
                cairo_destroy ( dr );
                cairo_surface_destroy ( s );
            }
        }
        TICK_N ( "Fake transparency" );
    }
}
