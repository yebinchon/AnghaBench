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
struct TYPE_4__ {int /*<<< orphan*/  num_lines; int /*<<< orphan*/  list_view; void* distance; void* line_map; int /*<<< orphan*/  sw; } ;
typedef  TYPE_1__ RofiViewState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5 ( RofiViewState *state )
{
    FUNC0 ( state->line_map );
    FUNC0 ( state->distance );
    state->num_lines = FUNC3 ( state->sw );
    state->line_map  = FUNC1 ( state->num_lines, sizeof ( unsigned int ) );
    state->distance  = FUNC1 ( state->num_lines, sizeof ( int ) );
    FUNC2 ( state->list_view, state->num_lines );
    FUNC4 ( state );
}