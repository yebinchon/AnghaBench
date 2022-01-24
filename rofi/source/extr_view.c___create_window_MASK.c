#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
typedef  void* xcb_window_t ;
typedef  int /*<<< orphan*/  xcb_void_cookie_t ;
struct TYPE_14__ {int /*<<< orphan*/  error_code; } ;
typedef  TYPE_2__ xcb_generic_error_t ;
typedef  int /*<<< orphan*/  xcb_atom_t ;
typedef  int /*<<< orphan*/  wm_class_name ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  pid_t ;
typedef  int /*<<< orphan*/  cairo_font_options_t ;
typedef  int /*<<< orphan*/  box ;
typedef  int /*<<< orphan*/  atoms ;
struct TYPE_20__ {int dpi; char const* fake_background; scalar_t__ fake_transparency; int /*<<< orphan*/  fullscreen; int /*<<< orphan*/ * menu_font; } ;
struct TYPE_19__ {int /*<<< orphan*/  depth; } ;
struct TYPE_18__ {scalar_t__ mh; double h; } ;
struct TYPE_17__ {int /*<<< orphan*/  visual_id; } ;
struct TYPE_15__ {int /*<<< orphan*/  _NET_WM_STATE; int /*<<< orphan*/  _NET_WM_STATE_ABOVE; int /*<<< orphan*/  _NET_WM_STATE_FULLSCREEN; int /*<<< orphan*/  _NET_WM_WINDOW_TYPE_NORMAL; int /*<<< orphan*/  _NET_WM_WINDOW_TYPE; } ;
struct TYPE_16__ {int /*<<< orphan*/  connection; TYPE_4__ ewmh; int /*<<< orphan*/ * sncontext; TYPE_1__* screen; } ;
struct TYPE_13__ {double height_in_pixels; scalar_t__ height_in_millimeters; } ;
struct TYPE_12__ {int flags; void* main_window; scalar_t__ fullscreen; TYPE_7__ mon; int /*<<< orphan*/  edit_draw; int /*<<< orphan*/  edit_surf; void* edit_pixmap; void* gc; } ;
typedef  int /*<<< orphan*/  PangoLanguage ;
typedef  int /*<<< orphan*/  PangoFontMap ;
typedef  int /*<<< orphan*/  PangoFontDescription ;
typedef  int /*<<< orphan*/  PangoContext ;
typedef  int /*<<< orphan*/  PangoCairoFontMap ;
typedef  int MenuFlags ;

/* Variables and functions */
 TYPE_11__ CacheState ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int MENU_NORMAL_WINDOW ; 
 int /*<<< orphan*/  ROFI_ORIENTATION_HORIZONTAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XCB_ATOM_STRING ; 
 int XCB_BACKING_STORE_NOT_USEFUL ; 
 int XCB_BACK_PIXMAP_NONE ; 
 int XCB_CW_BACKING_STORE ; 
 int XCB_CW_BACK_PIXMAP ; 
 int XCB_CW_BIT_GRAVITY ; 
 int XCB_CW_BORDER_PIXEL ; 
 int XCB_CW_COLORMAP ; 
 int XCB_CW_EVENT_MASK ; 
 int /*<<< orphan*/  XCB_CW_OVERRIDE_REDIRECT ; 
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
 int /*<<< orphan*/  XCB_WINDOW_CLASS_INPUT_OUTPUT ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,void*,TYPE_6__*,int,int) ; 
 TYPE_9__ config ; 
 TYPE_8__* depth ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,double) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 char* FUNC12 () ; 
 char* FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,char const*) ; 
 int map ; 
 int /*<<< orphan*/  FUNC17 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC25 (char const*) ; 
 int /*<<< orphan*/ * FUNC26 () ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC28 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 int /*<<< orphan*/  FUNC30 (char const*) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC32 (char*) ; 
 int /*<<< orphan*/  FUNC33 (char const*,int /*<<< orphan*/ *) ; 
 TYPE_6__* visual ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC36 (void*) ; 
 TYPE_5__* xcb ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC38 (int /*<<< orphan*/ ,void*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC39 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,void*,int,int) ; 
 int /*<<< orphan*/  FUNC40 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC41 (TYPE_4__*,void*,int /*<<< orphan*/ ) ; 
 void* FUNC42 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC43 (int /*<<< orphan*/ ,void*,int,char const*) ; 
 int /*<<< orphan*/  FUNC44 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC45 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC46 () ; 

void FUNC47 ( MenuFlags menu_flags )
{
    uint32_t          selmask  = XCB_CW_BACK_PIXMAP | XCB_CW_BORDER_PIXEL | XCB_CW_BIT_GRAVITY | XCB_CW_BACKING_STORE | XCB_CW_EVENT_MASK | XCB_CW_COLORMAP;
    uint32_t          selval[] = {
        XCB_BACK_PIXMAP_NONE,                                                                           0,
        XCB_GRAVITY_STATIC,
        XCB_BACKING_STORE_NOT_USEFUL,
        XCB_EVENT_MASK_EXPOSURE | XCB_EVENT_MASK_BUTTON_PRESS | XCB_EVENT_MASK_BUTTON_RELEASE |
        XCB_EVENT_MASK_KEY_PRESS | XCB_EVENT_MASK_KEY_RELEASE | XCB_EVENT_MASK_KEYMAP_STATE |
        XCB_EVENT_MASK_STRUCTURE_NOTIFY | XCB_EVENT_MASK_FOCUS_CHANGE | XCB_EVENT_MASK_BUTTON_1_MOTION,
        map
    };

    xcb_window_t      box_window = FUNC42 ( xcb->connection );
    xcb_void_cookie_t cc         = FUNC40 ( xcb->connection, depth->depth, box_window, FUNC46 ( ),
                                                               0, 0, 200, 100, 0, XCB_WINDOW_CLASS_INPUT_OUTPUT,
                                                               visual->visual_id, selmask, selval );
    xcb_generic_error_t *error;
    error = FUNC45 ( xcb->connection, cc );
    if ( error ) {
        FUNC10 ( "xcb_create_window() failed error=0x%x\n", error->error_code );
        FUNC8 ( EXIT_FAILURE );
    }
    FUNC0 ( "xcb create window" );
    CacheState.gc = FUNC42 ( xcb->connection );
    FUNC38 ( xcb->connection, CacheState.gc, box_window, 0, 0 );

    FUNC0 ( "xcb create gc" );
    // Create a drawable.
    CacheState.edit_pixmap = FUNC42 ( xcb->connection );
    FUNC39 ( xcb->connection, depth->depth,
                        CacheState.edit_pixmap, CacheState.main_window, 200, 100 );

    CacheState.edit_surf = FUNC7 ( xcb->connection, CacheState.edit_pixmap, visual, 200, 100 );
    CacheState.edit_draw = FUNC3 ( CacheState.edit_surf );

    FUNC0 ( "create cairo surface" );
    // Set up pango context.
    cairo_font_options_t *fo = FUNC4 ();
    // Take font description from xlib surface
    FUNC6 ( CacheState.edit_surf, fo );
    // TODO should we update the drawable each time?
    PangoContext *p = FUNC19 ( CacheState.edit_draw );
    // Set the font options from the xlib surface
    FUNC18 ( p, fo );
    FUNC0 ( "pango cairo font setup" );

    CacheState.main_window = box_window;
    CacheState.flags       = menu_flags;
    FUNC17 ( &( CacheState.mon ) );
    // Setup dpi
    if ( config.dpi > 1 ) {
        PangoFontMap *font_map = FUNC20 ();
        FUNC21 ( (PangoCairoFontMap *) font_map, (double) config.dpi );
    }
    else if  ( config.dpi == 0 || config.dpi == 1 ) {
        // Auto-detect mode.
        double dpi = 96;
        if ( CacheState.mon.mh > 0 && config.dpi == 1 ) {
            dpi = ( CacheState.mon.h * 25.4 ) / (double) ( CacheState.mon.mh );
        }
        else {
            dpi = ( xcb->screen->height_in_pixels * 25.4 ) / (double) ( xcb->screen->height_in_millimeters );
        }

        FUNC9 ( "Auto-detected DPI: %.2lf", dpi );
        PangoFontMap *font_map = FUNC20 ();
        FUNC21 ( (PangoCairoFontMap *) font_map, dpi );
        config.dpi = dpi;
    }
    // Setup font.
    // Dummy widget.
    box        *win  = FUNC2 ( NULL, "window", ROFI_ORIENTATION_HORIZONTAL );
    const char *font = FUNC28 ( FUNC1 ( win ), "font", config.menu_font );
    if ( font ) {
        PangoFontDescription *pfd = FUNC25 ( font );
        if ( FUNC16 ( pfd, font ) ) {
            FUNC22 ( p, pfd );
        }
        FUNC24 ( pfd );
    }
    PangoLanguage *l = FUNC26 ();
    FUNC23 ( p, l );
    FUNC0 ( "configure font" );

    // Tell textbox to use this context.
    FUNC33 ( font, p );
    // cleanup
    FUNC14 ( p );
    FUNC5 ( fo );

    FUNC0 ( "textbox setup" );
    // // make it an unmanaged window
    if ( ( ( menu_flags & MENU_NORMAL_WINDOW ) == 0 ) ) {
        FUNC35 ( box_window, xcb->ewmh._NET_WM_STATE, &( xcb->ewmh._NET_WM_STATE_ABOVE ), 1 );
        uint32_t values[] = { 1 };
        FUNC37 ( xcb->connection, box_window, XCB_CW_OVERRIDE_REDIRECT, values );
    }
    else{
        FUNC35 ( box_window, xcb->ewmh._NET_WM_WINDOW_TYPE, &( xcb->ewmh._NET_WM_WINDOW_TYPE_NORMAL ), 1 );
        FUNC36 ( box_window );
    }

    FUNC0 ( "setup window attributes" );
    CacheState.fullscreen = FUNC27 ( FUNC1 ( win ), "fullscreen", config.fullscreen );
    if ( CacheState.fullscreen ) {
        xcb_atom_t atoms[] = {
            xcb->ewmh._NET_WM_STATE_FULLSCREEN,
            xcb->ewmh._NET_WM_STATE_ABOVE
        };
        FUNC35 (  box_window, xcb->ewmh._NET_WM_STATE, atoms, sizeof ( atoms ) / sizeof ( xcb_atom_t ) );
    }

    FUNC0 ( "setup window fullscreen" );
    // Set the WM_NAME
    FUNC29 ( "rofi" );
    const char wm_class_name[] = "rofi\0Rofi";
    FUNC43 ( xcb->connection, box_window, sizeof ( wm_class_name ), wm_class_name );

    FUNC0 ( "setup window name and class" );
    const char *transparency = FUNC28 ( FUNC1 ( win ), "transparency", NULL );
    if ( transparency ) {
        FUNC30 ( transparency  );
    }
    else if ( config.fake_transparency && config.fake_background ) {
        FUNC30 ( config.fake_background );
    }
    if ( xcb->sncontext != NULL ) {
        FUNC31 ( xcb->sncontext, CacheState.main_window );
    }
    FUNC0 ( "setup startup notification" );
    FUNC34 ( FUNC1 ( win ) );
    FUNC0 ( "done" );

    // Set the PID.
    pid_t pid = FUNC15 ();
    FUNC41 ( &( xcb->ewmh ), CacheState.main_window, pid );

    // Get hostname
    const char *hostname = FUNC12 ();
    char       *ahost    = FUNC13 ( hostname );
    if ( ahost != NULL ) {
        FUNC44 ( xcb->connection,
                                          CacheState.main_window,
                                          XCB_ATOM_STRING, 8,
                                          FUNC32 ( ahost ), ahost );
        FUNC11 ( ahost );
    }
}