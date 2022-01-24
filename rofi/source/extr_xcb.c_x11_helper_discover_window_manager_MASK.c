#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_window_t ;
typedef  int /*<<< orphan*/  xcb_get_property_cookie_t ;
struct TYPE_5__ {scalar_t__ strings_len; int /*<<< orphan*/  strings; } ;
typedef  TYPE_1__ xcb_ewmh_get_utf8_strings_reply_t ;
struct TYPE_6__ {int /*<<< orphan*/  ewmh; } ;

/* Variables and functions */
 int WM_DO_NOT_CHANGE_CURRENT_DESKTOP ; 
 int WM_PANGO_WORKSPACE_NAMES ; 
 int current_window_manager ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 TYPE_4__* xcb ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8 ( void )
{
    xcb_window_t              wm_win = 0;
    xcb_get_property_cookie_t cc     = FUNC3 ( &xcb->ewmh,
                                                                                    FUNC7 () );

    if ( FUNC2 ( &xcb->ewmh, cc, &wm_win, NULL ) ) {
        xcb_ewmh_get_utf8_strings_reply_t wtitle;
        xcb_get_property_cookie_t         cookie = FUNC6 ( &( xcb->ewmh ), wm_win );
        if (  FUNC5 ( &( xcb->ewmh ), cookie, &wtitle, (void *) 0 ) ) {
            if ( wtitle.strings_len > 0 ) {
                FUNC0 ( "Found window manager: %s", wtitle.strings );
                if ( FUNC1 ( wtitle.strings, "i3" ) == 0 ) {
                    current_window_manager = WM_DO_NOT_CHANGE_CURRENT_DESKTOP | WM_PANGO_WORKSPACE_NAMES;
                }
            }
            FUNC4 ( &wtitle );
        }
    }
}