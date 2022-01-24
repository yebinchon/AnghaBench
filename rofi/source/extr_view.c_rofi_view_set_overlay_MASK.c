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
struct TYPE_3__ {int /*<<< orphan*/ * overlay; int /*<<< orphan*/ * list_view; } ;
typedef  TYPE_1__ RofiViewState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5 ( RofiViewState *state, const char *text )
{
    if ( state->overlay == NULL || state->list_view == NULL ) {
        return;
    }
    if ( text == NULL ) {
        FUNC3 ( FUNC0 ( state->overlay ) );
        return;
    }
    FUNC4 ( FUNC0 ( state->overlay ) );
    FUNC2 ( state->overlay, text );
    // We want to queue a repaint.
    FUNC1 ( );
}