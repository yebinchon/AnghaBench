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
struct TYPE_3__ {int /*<<< orphan*/ * mesg_box; int /*<<< orphan*/  mesg_tb; int /*<<< orphan*/  sw; } ;
typedef  TYPE_1__ RofiViewState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6 ( RofiViewState *state )
{
    if ( state->mesg_box == NULL ) {
        return;
    }
    char *msg = FUNC2 ( state->sw );
    if ( msg ) {
        FUNC3 ( state->mesg_tb, msg );
        FUNC5 ( FUNC0 ( state->mesg_box ) );
        FUNC1 ( msg );
    }
    else {
        FUNC4 ( FUNC0 ( state->mesg_box ) );
    }
}