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
struct TYPE_3__ {unsigned int filtered_lines; int /*<<< orphan*/  refilter; int /*<<< orphan*/  text; int /*<<< orphan*/ * line_map; int /*<<< orphan*/  sw; int /*<<< orphan*/ * list_view; } ;
typedef  TYPE_1__ RofiViewState ;

/* Variables and functions */
 int /*<<< orphan*/  MOVE_END ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) inline static void FUNC5 ( RofiViewState *state )
{
    if ( state->list_view == NULL ) {
        return;
    }
    unsigned int selected = FUNC1 ( state->list_view );
    // If a valid item is selected, return that..
    if ( selected < state->filtered_lines ) {
        char *str = FUNC2 ( state->sw, state->line_map[selected] );
        FUNC4 ( state->text, str );
        FUNC0 ( str );
        FUNC3 ( state->text, MOVE_END );
        state->refilter = TRUE;
    }
}