#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ refilter; } ;
typedef  TYPE_1__ RofiViewState ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 () ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC6 ( RofiViewState *state )
{
    if ( FUNC3 ( state ) ) {
        // This menu is done.
        FUNC1 ( state );
        // If there a state. (for example error) reload it.
        state = FUNC2 ();

        // cleanup, if no more state to display.
        if ( state == NULL ) {
            // Quit main-loop.
            FUNC0 ();
            return;
        }
    }

    // Update if requested.
    if ( state->refilter ) {
        FUNC4 ( state );
    }
    FUNC5 ( state, TRUE );
}