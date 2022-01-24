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
struct TYPE_2__ {int /*<<< orphan*/  views; } ;
typedef  int /*<<< orphan*/  RofiViewState ;

/* Variables and functions */
 TYPE_1__ CacheState ; 
 int /*<<< orphan*/ * current_active_menu ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7 ( RofiViewState *state )
{
    if ( current_active_menu != NULL && state != NULL ) {
        FUNC4 ( &( CacheState.views ), current_active_menu );
        // TODO check.
        current_active_menu = state;
        FUNC1 ( "stack view." );
        FUNC6 ( current_active_menu );
        FUNC5 ();
        return;
    }
    else if ( state == NULL && !FUNC2 ( &( CacheState.views ) ) ) {
        FUNC1 ( "pop view." );
        current_active_menu = FUNC3 ( &( CacheState.views ) );
        FUNC6 ( current_active_menu );
        FUNC5 ();
        return;
    }
    FUNC0 ( ( current_active_menu == NULL && state != NULL ) || ( current_active_menu != NULL && state == NULL ) );
    current_active_menu = state;
    FUNC5 ();
}