#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ num_modi; struct TYPE_4__* modi; struct TYPE_4__* distance; struct TYPE_4__* line_map; int /*<<< orphan*/  main_window; int /*<<< orphan*/ * tokens; } ;
typedef  TYPE_1__ RofiViewState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4 ( RofiViewState *state )
{
    if ( state->tokens ) {
        FUNC2 ( state->tokens );
        state->tokens = NULL;
    }
    // Do this here?
    // Wait for final release?
    FUNC3 ( FUNC0 ( state->main_window ) );

    FUNC1 ( state->line_map );
    FUNC1 ( state->distance );
    // Free the switcher boxes.
    // When state is free'ed we should no longer need these.
    FUNC1 ( state->modi );
    state->num_modi = 0;
    FUNC1 ( state );
}