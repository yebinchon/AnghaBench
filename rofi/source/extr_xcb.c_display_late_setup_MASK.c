#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  gboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  lazy_grab_keyboard ; 
 int /*<<< orphan*/  lazy_grab_pointer ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 

gboolean FUNC7 ( void )
{
    FUNC5 ();

    /**
     * Create window (without showing)
     */
    // Try to grab the keyboard as early as possible.
    // We grab this using the rootwindow (as dmenu does it).
    // this seems to result in the smallest delay for most people.
    if ( FUNC0 ( "-normal-window" ) >= 0 ) {
        return TRUE;
    }
    if ( FUNC0 ( "-no-lazy-grab" ) >= 0 ) {
        if ( !FUNC3 ( FUNC6 (), 500 ) ) {
            FUNC2 ( "Failed to grab keyboard, even after %d uS.", 500 * 1000 );
            return FALSE;
        }
        if ( !FUNC4 ( FUNC6 (), 100 ) ) {
            FUNC2 ( "Failed to grab mouse pointer, even after %d uS.", 100 * 1000 );
        }
    }
    else {
        if ( !FUNC3 ( FUNC6 (), 0 ) ) {
            FUNC1 ( 1, lazy_grab_keyboard, NULL );
        }
        if ( !FUNC4 ( FUNC6 (), 0 ) ) {
            FUNC1 ( 1, lazy_grab_pointer, NULL );
        }
    }
    return TRUE;
}