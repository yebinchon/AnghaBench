#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  xcb_window_t ;
struct TYPE_5__ {scalar_t__ status; } ;
typedef  TYPE_1__ xcb_grab_pointer_reply_t ;
typedef  int /*<<< orphan*/  xcb_grab_pointer_cookie_t ;
struct timespec {int tv_nsec; int /*<<< orphan*/  tv_sec; } ;
struct TYPE_6__ {int /*<<< orphan*/  connection; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  XCB_CURRENT_TIME ; 
 int /*<<< orphan*/  XCB_EVENT_MASK_BUTTON_RELEASE ; 
 int /*<<< orphan*/  XCB_GRAB_MODE_ASYNC ; 
 scalar_t__ XCB_GRAB_STATUS_SUCCESS ; 
 int /*<<< orphan*/  XCB_NONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct timespec*,int /*<<< orphan*/ *) ; 
 TYPE_3__* xcb ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7 ( xcb_window_t w, int iters )
{
    int i = 0;
    while ( TRUE ) {
        if ( FUNC4 ( xcb->connection ) ) {
            FUNC2 ( "Connection has error" );
            FUNC0 ( EXIT_FAILURE );
        }
        xcb_grab_pointer_cookie_t cc = FUNC5 ( xcb->connection, 1, w, XCB_EVENT_MASK_BUTTON_RELEASE,
                                                          XCB_GRAB_MODE_ASYNC, XCB_GRAB_MODE_ASYNC, w, XCB_NONE, XCB_CURRENT_TIME );
        xcb_grab_pointer_reply_t  *r = FUNC6 ( xcb->connection, cc, NULL );
        if ( r ) {
            if ( r->status == XCB_GRAB_STATUS_SUCCESS ) {
                FUNC1 ( r );
                return 1;
            }
            FUNC1 ( r );
        }
        if ( ( ++i ) > iters ) {
            break;
        }
        struct timespec del = {
             .tv_sec  = 0,
             .tv_nsec =  1000000
        };
        FUNC3 ( &del, NULL );
    }
    return 0;
}