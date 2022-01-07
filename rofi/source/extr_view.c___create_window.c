
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef void* xcb_window_t ;
typedef int xcb_void_cookie_t ;
struct TYPE_14__ {int error_code; } ;
typedef TYPE_2__ xcb_generic_error_t ;
typedef int xcb_atom_t ;
typedef int wm_class_name ;
typedef int uint32_t ;
typedef int pid_t ;
typedef int cairo_font_options_t ;
typedef int box ;
typedef int atoms ;
struct TYPE_20__ {int dpi; char const* fake_background; scalar_t__ fake_transparency; int fullscreen; int * menu_font; } ;
struct TYPE_19__ {int depth; } ;
struct TYPE_18__ {scalar_t__ mh; double h; } ;
struct TYPE_17__ {int visual_id; } ;
struct TYPE_15__ {int _NET_WM_STATE; int _NET_WM_STATE_ABOVE; int _NET_WM_STATE_FULLSCREEN; int _NET_WM_WINDOW_TYPE_NORMAL; int _NET_WM_WINDOW_TYPE; } ;
struct TYPE_16__ {int connection; TYPE_4__ ewmh; int * sncontext; TYPE_1__* screen; } ;
struct TYPE_13__ {double height_in_pixels; scalar_t__ height_in_millimeters; } ;
struct TYPE_12__ {int flags; void* main_window; scalar_t__ fullscreen; TYPE_7__ mon; int edit_draw; int edit_surf; void* edit_pixmap; void* gc; } ;
typedef int PangoLanguage ;
typedef int PangoFontMap ;
typedef int PangoFontDescription ;
typedef int PangoContext ;
typedef int PangoCairoFontMap ;
typedef int MenuFlags ;


 TYPE_11__ CacheState ;
 int EXIT_FAILURE ;
 int MENU_NORMAL_WINDOW ;
 int ROFI_ORIENTATION_HORIZONTAL ;
 int TICK_N (char*) ;
 int WIDGET (int *) ;
 int XCB_ATOM_STRING ;
 int XCB_BACKING_STORE_NOT_USEFUL ;
 int XCB_BACK_PIXMAP_NONE ;
 int XCB_CW_BACKING_STORE ;
 int XCB_CW_BACK_PIXMAP ;
 int XCB_CW_BIT_GRAVITY ;
 int XCB_CW_BORDER_PIXEL ;
 int XCB_CW_COLORMAP ;
 int XCB_CW_EVENT_MASK ;
 int XCB_CW_OVERRIDE_REDIRECT ;
 int XCB_EVENT_MASK_BUTTON_1_MOTION ;
 int XCB_EVENT_MASK_BUTTON_PRESS ;
 int XCB_EVENT_MASK_BUTTON_RELEASE ;
 int XCB_EVENT_MASK_EXPOSURE ;
 int XCB_EVENT_MASK_FOCUS_CHANGE ;
 int XCB_EVENT_MASK_KEYMAP_STATE ;
 int XCB_EVENT_MASK_KEY_PRESS ;
 int XCB_EVENT_MASK_KEY_RELEASE ;
 int XCB_EVENT_MASK_STRUCTURE_NOTIFY ;
 int XCB_GRAVITY_STATIC ;
 int XCB_WINDOW_CLASS_INPUT_OUTPUT ;
 int * box_create (int *,char*,int ) ;
 int cairo_create (int ) ;
 int * cairo_font_options_create () ;
 int cairo_font_options_destroy (int *) ;
 int cairo_surface_get_font_options (int ,int *) ;
 int cairo_xcb_surface_create (int ,void*,TYPE_6__*,int,int) ;
 TYPE_9__ config ;
 TYPE_8__* depth ;
 int exit (int ) ;
 int g_debug (char*,double) ;
 int g_error (char*,int ) ;
 int g_free (char*) ;
 char* g_get_host_name () ;
 char* g_hostname_to_ascii (char const*) ;
 int g_object_unref (int *) ;
 int getpid () ;
 scalar_t__ helper_validate_font (int *,char const*) ;
 int map ;
 int monitor_active (TYPE_7__*) ;
 int pango_cairo_context_set_font_options (int *,int *) ;
 int * pango_cairo_create_context (int ) ;
 int * pango_cairo_font_map_get_default () ;
 int pango_cairo_font_map_set_resolution (int *,double) ;
 int pango_context_set_font_description (int *,int *) ;
 int pango_context_set_language (int *,int *) ;
 int pango_font_description_free (int *) ;
 int * pango_font_description_from_string (char const*) ;
 int * pango_language_get_default () ;
 scalar_t__ rofi_theme_get_boolean (int ,char*,int ) ;
 char* rofi_theme_get_string (int ,char*,int *) ;
 int rofi_view_set_window_title (char*) ;
 int rofi_view_setup_fake_transparency (char const*) ;
 int sn_launchee_context_setup_window (int *,void*) ;
 int strlen (char*) ;
 int textbox_set_pango_context (char const*,int *) ;
 TYPE_6__* visual ;
 int widget_free (int ) ;
 int window_set_atom_prop (void*,int ,int *,int) ;
 int x11_disable_decoration (void*) ;
 TYPE_5__* xcb ;
 int xcb_change_window_attributes (int ,void*,int ,int*) ;
 int xcb_create_gc (int ,void*,void*,int ,int ) ;
 int xcb_create_pixmap (int ,int ,void*,void*,int,int) ;
 int xcb_create_window_checked (int ,int ,void*,int ,int ,int ,int,int,int ,int ,int ,int,int*) ;
 int xcb_ewmh_set_wm_pid (TYPE_4__*,void*,int ) ;
 void* xcb_generate_id (int ) ;
 int xcb_icccm_set_wm_class (int ,void*,int,char const*) ;
 int xcb_icccm_set_wm_client_machine (int ,void*,int ,int,int ,char*) ;
 TYPE_2__* xcb_request_check (int ,int ) ;
 int xcb_stuff_get_root_window () ;

void __create_window ( MenuFlags menu_flags )
{
    uint32_t selmask = XCB_CW_BACK_PIXMAP | XCB_CW_BORDER_PIXEL | XCB_CW_BIT_GRAVITY | XCB_CW_BACKING_STORE | XCB_CW_EVENT_MASK | XCB_CW_COLORMAP;
    uint32_t selval[] = {
        XCB_BACK_PIXMAP_NONE, 0,
        XCB_GRAVITY_STATIC,
        XCB_BACKING_STORE_NOT_USEFUL,
        XCB_EVENT_MASK_EXPOSURE | XCB_EVENT_MASK_BUTTON_PRESS | XCB_EVENT_MASK_BUTTON_RELEASE |
        XCB_EVENT_MASK_KEY_PRESS | XCB_EVENT_MASK_KEY_RELEASE | XCB_EVENT_MASK_KEYMAP_STATE |
        XCB_EVENT_MASK_STRUCTURE_NOTIFY | XCB_EVENT_MASK_FOCUS_CHANGE | XCB_EVENT_MASK_BUTTON_1_MOTION,
        map
    };

    xcb_window_t box_window = xcb_generate_id ( xcb->connection );
    xcb_void_cookie_t cc = xcb_create_window_checked ( xcb->connection, depth->depth, box_window, xcb_stuff_get_root_window ( ),
                                                               0, 0, 200, 100, 0, XCB_WINDOW_CLASS_INPUT_OUTPUT,
                                                               visual->visual_id, selmask, selval );
    xcb_generic_error_t *error;
    error = xcb_request_check ( xcb->connection, cc );
    if ( error ) {
        g_error ( "xcb_create_window() failed error=0x%x\n", error->error_code );
        exit ( EXIT_FAILURE );
    }
    TICK_N ( "xcb create window" );
    CacheState.gc = xcb_generate_id ( xcb->connection );
    xcb_create_gc ( xcb->connection, CacheState.gc, box_window, 0, 0 );

    TICK_N ( "xcb create gc" );

    CacheState.edit_pixmap = xcb_generate_id ( xcb->connection );
    xcb_create_pixmap ( xcb->connection, depth->depth,
                        CacheState.edit_pixmap, CacheState.main_window, 200, 100 );

    CacheState.edit_surf = cairo_xcb_surface_create ( xcb->connection, CacheState.edit_pixmap, visual, 200, 100 );
    CacheState.edit_draw = cairo_create ( CacheState.edit_surf );

    TICK_N ( "create cairo surface" );

    cairo_font_options_t *fo = cairo_font_options_create ();

    cairo_surface_get_font_options ( CacheState.edit_surf, fo );

    PangoContext *p = pango_cairo_create_context ( CacheState.edit_draw );

    pango_cairo_context_set_font_options ( p, fo );
    TICK_N ( "pango cairo font setup" );

    CacheState.main_window = box_window;
    CacheState.flags = menu_flags;
    monitor_active ( &( CacheState.mon ) );

    if ( config.dpi > 1 ) {
        PangoFontMap *font_map = pango_cairo_font_map_get_default ();
        pango_cairo_font_map_set_resolution ( (PangoCairoFontMap *) font_map, (double) config.dpi );
    }
    else if ( config.dpi == 0 || config.dpi == 1 ) {

        double dpi = 96;
        if ( CacheState.mon.mh > 0 && config.dpi == 1 ) {
            dpi = ( CacheState.mon.h * 25.4 ) / (double) ( CacheState.mon.mh );
        }
        else {
            dpi = ( xcb->screen->height_in_pixels * 25.4 ) / (double) ( xcb->screen->height_in_millimeters );
        }

        g_debug ( "Auto-detected DPI: %.2lf", dpi );
        PangoFontMap *font_map = pango_cairo_font_map_get_default ();
        pango_cairo_font_map_set_resolution ( (PangoCairoFontMap *) font_map, dpi );
        config.dpi = dpi;
    }


    box *win = box_create ( ((void*)0), "window", ROFI_ORIENTATION_HORIZONTAL );
    const char *font = rofi_theme_get_string ( WIDGET ( win ), "font", config.menu_font );
    if ( font ) {
        PangoFontDescription *pfd = pango_font_description_from_string ( font );
        if ( helper_validate_font ( pfd, font ) ) {
            pango_context_set_font_description ( p, pfd );
        }
        pango_font_description_free ( pfd );
    }
    PangoLanguage *l = pango_language_get_default ();
    pango_context_set_language ( p, l );
    TICK_N ( "configure font" );


    textbox_set_pango_context ( font, p );

    g_object_unref ( p );
    cairo_font_options_destroy ( fo );

    TICK_N ( "textbox setup" );

    if ( ( ( menu_flags & MENU_NORMAL_WINDOW ) == 0 ) ) {
        window_set_atom_prop ( box_window, xcb->ewmh._NET_WM_STATE, &( xcb->ewmh._NET_WM_STATE_ABOVE ), 1 );
        uint32_t values[] = { 1 };
        xcb_change_window_attributes ( xcb->connection, box_window, XCB_CW_OVERRIDE_REDIRECT, values );
    }
    else{
        window_set_atom_prop ( box_window, xcb->ewmh._NET_WM_WINDOW_TYPE, &( xcb->ewmh._NET_WM_WINDOW_TYPE_NORMAL ), 1 );
        x11_disable_decoration ( box_window );
    }

    TICK_N ( "setup window attributes" );
    CacheState.fullscreen = rofi_theme_get_boolean ( WIDGET ( win ), "fullscreen", config.fullscreen );
    if ( CacheState.fullscreen ) {
        xcb_atom_t atoms[] = {
            xcb->ewmh._NET_WM_STATE_FULLSCREEN,
            xcb->ewmh._NET_WM_STATE_ABOVE
        };
        window_set_atom_prop ( box_window, xcb->ewmh._NET_WM_STATE, atoms, sizeof ( atoms ) / sizeof ( xcb_atom_t ) );
    }

    TICK_N ( "setup window fullscreen" );

    rofi_view_set_window_title ( "rofi" );
    const char wm_class_name[] = "rofi\0Rofi";
    xcb_icccm_set_wm_class ( xcb->connection, box_window, sizeof ( wm_class_name ), wm_class_name );

    TICK_N ( "setup window name and class" );
    const char *transparency = rofi_theme_get_string ( WIDGET ( win ), "transparency", ((void*)0) );
    if ( transparency ) {
        rofi_view_setup_fake_transparency ( transparency );
    }
    else if ( config.fake_transparency && config.fake_background ) {
        rofi_view_setup_fake_transparency ( config.fake_background );
    }
    if ( xcb->sncontext != ((void*)0) ) {
        sn_launchee_context_setup_window ( xcb->sncontext, CacheState.main_window );
    }
    TICK_N ( "setup startup notification" );
    widget_free ( WIDGET ( win ) );
    TICK_N ( "done" );


    pid_t pid = getpid ();
    xcb_ewmh_set_wm_pid ( &( xcb->ewmh ), CacheState.main_window, pid );


    const char *hostname = g_get_host_name ();
    char *ahost = g_hostname_to_ascii ( hostname );
    if ( ahost != ((void*)0) ) {
        xcb_icccm_set_wm_client_machine ( xcb->connection,
                                          CacheState.main_window,
                                          XCB_ATOM_STRING, 8,
                                          strlen ( ahost ), ahost );
        g_free ( ahost );
    }
}
