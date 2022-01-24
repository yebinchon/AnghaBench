#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ screen_nbr; int /*<<< orphan*/ * screen; int /*<<< orphan*/ * connection; int /*<<< orphan*/ * source; int /*<<< orphan*/  ewmh; int /*<<< orphan*/ * sndisplay; int /*<<< orphan*/ * sncontext; int /*<<< orphan*/  bindings_seat; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 TYPE_1__* xcb ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

void FUNC9 ( void )
{
    if ( xcb->connection == NULL ) {
        return;
    }

    FUNC0 ( "Cleaning up XCB and XKB" );

    FUNC2 ( xcb->bindings_seat );
    if ( xcb->sncontext != NULL ) {
        FUNC4 ( xcb->sncontext );
        xcb->sncontext = NULL;
    }
    if ( xcb->sndisplay != NULL ) {
        FUNC3 ( xcb->sndisplay );
        xcb->sndisplay = NULL;
    }
    FUNC5 ();
    FUNC7 ( &( xcb->ewmh ) );
    FUNC8 ( xcb->connection );
    FUNC6 ( xcb->connection );
    FUNC1 ( xcb->source );
    xcb->source     = NULL;
    xcb->connection = NULL;
    xcb->screen     = NULL;
    xcb->screen_nbr = 0;
}