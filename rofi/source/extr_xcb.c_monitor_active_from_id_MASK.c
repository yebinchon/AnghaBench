#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_window_t ;
typedef  int /*<<< orphan*/  xcb_get_property_cookie_t ;
struct TYPE_13__ {unsigned int desktop_viewport_len; TYPE_2__* desktop_viewport; } ;
typedef  TYPE_3__ xcb_ewmh_get_desktop_viewport_reply_t ;
struct TYPE_14__ {int x; int y; } ;
typedef  TYPE_4__ workarea ;
struct TYPE_15__ {int /*<<< orphan*/  ewmh; int /*<<< orphan*/  screen_nbr; TYPE_1__* screen; } ;
struct TYPE_12__ {int x; int y; } ;
struct TYPE_11__ {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,TYPE_4__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int*,int*) ; 
 TYPE_7__* xcb ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC9 ( int mon_id, workarea *mon )
{
    xcb_window_t root = xcb->screen->root;
    int          x, y;
    // At mouse position.
    if ( mon_id == -3 ) {
        if ( FUNC3 ( root, &x, &y ) ) {
            FUNC2 ( x, y, mon );
            mon->x = x;
            mon->y = y;
            return TRUE;
        }
    }
    // Focused monitor
    else if ( mon_id == -1 ) {
        // Get the current desktop.
        unsigned int              current_desktop = 0;
        xcb_get_property_cookie_t gcdc;
        gcdc = FUNC4 ( &xcb->ewmh, xcb->screen_nbr );
        if  ( FUNC5 ( &xcb->ewmh, gcdc, &current_desktop, NULL ) ) {
            xcb_get_property_cookie_t             c = FUNC6 ( &xcb->ewmh, xcb->screen_nbr );
            xcb_ewmh_get_desktop_viewport_reply_t vp;
            if ( FUNC7 ( &xcb->ewmh, c, &vp, NULL ) ) {
                if ( current_desktop < vp.desktop_viewport_len ) {
                    FUNC2 ( vp.desktop_viewport[current_desktop].x,
                                         vp.desktop_viewport[current_desktop].y, mon );
                    FUNC8 ( &vp );
                    return TRUE;
                }
                else {
                    FUNC0 ( "Viewport does not exist for current desktop: %d, falling back to mouse location (-5)", current_desktop );
                }
                FUNC8 ( &vp );
            }
            else {
                FUNC0 ( "Failed to get viewport for current desktop: %d, falling back to mouse location (-5).", current_desktop );
            }
        }
        else {
            FUNC0 ( "Failed to get current desktop, falling back to mouse location (-5)." );
        }
    }
    else if ( mon_id == -2 || mon_id == -4 ) {
        if ( FUNC1 ( mon_id, mon ) ) {
            return TRUE;
        }
    }
    // Monitor that has mouse pointer.
    else if ( mon_id == -5 ) {
        if ( FUNC3 ( root, &x, &y ) ) {
            FUNC2 ( x, y, mon );
            return TRUE;
        }
        // This is our give up point.
        return FALSE;
    }
    FUNC0 ( "Failed to find monitor, fall back to monitor showing mouse." );
    return FUNC9 ( -5, mon );
}