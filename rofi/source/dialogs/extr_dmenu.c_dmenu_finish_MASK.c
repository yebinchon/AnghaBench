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
typedef  int /*<<< orphan*/  RofiViewState ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int FALSE ; 
 int /*<<< orphan*/  dmenu_mode ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4 ( RofiViewState *state, int retv )
{
    if ( retv == FALSE ) {
        FUNC1 ( EXIT_FAILURE );
    }
    else if ( retv >= 10 ) {
        FUNC1 ( retv );
    }
    else{
        FUNC1 ( EXIT_SUCCESS );
    }
    FUNC3 ( NULL );
    FUNC2 ( state );
    FUNC0 ( &dmenu_mode );
}