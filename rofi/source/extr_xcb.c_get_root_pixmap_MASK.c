#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  root; } ;
typedef  TYPE_1__ xcb_screen_t ;
typedef  int /*<<< orphan*/  xcb_pixmap_t ;
typedef  int /*<<< orphan*/  xcb_get_property_reply_t ;
typedef  int /*<<< orphan*/  xcb_get_property_cookie_t ;
typedef  int /*<<< orphan*/  xcb_connection_t ;
typedef  int /*<<< orphan*/  xcb_atom_t ;

/* Variables and functions */
 int /*<<< orphan*/  XCB_ATOM_PIXMAP ; 
 int /*<<< orphan*/  XCB_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static xcb_pixmap_t FUNC6 ( xcb_connection_t *c,
                                      xcb_screen_t *screen,
                                      xcb_atom_t atom )
{
    xcb_get_property_cookie_t cookie;
    xcb_get_property_reply_t  *reply;
    xcb_pixmap_t              rootpixmap = XCB_NONE;

    cookie = FUNC2 ( c,
                                0,
                                screen->root,
                                atom,
                                XCB_ATOM_PIXMAP,
                                0,
                                1 );

    reply = FUNC3 ( c, cookie, NULL );

    if ( reply ) {
        if ( FUNC5 ( reply ) == sizeof ( xcb_pixmap_t ) ) {
            FUNC1 ( &rootpixmap, FUNC4 ( reply ), sizeof ( xcb_pixmap_t ) );
        }
        FUNC0 ( reply );
    }

    return rootpixmap;
}