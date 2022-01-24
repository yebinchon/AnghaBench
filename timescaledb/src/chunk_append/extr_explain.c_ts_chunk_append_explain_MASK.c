#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ sort_options; int runtime_number_loops; int runtime_number_exclusions; scalar_t__ runtime_exclusion; int /*<<< orphan*/  initial_subplans; scalar_t__ startup_exclusion; } ;
struct TYPE_11__ {int /*<<< orphan*/  custom_ps; } ;
struct TYPE_10__ {scalar_t__ format; scalar_t__ verbose; } ;
typedef  int /*<<< orphan*/  List ;
typedef  TYPE_1__ ExplainState ;
typedef  TYPE_2__ CustomScanState ;
typedef  TYPE_3__ ChunkAppendState ;

/* Variables and functions */
 scalar_t__ EXPLAIN_FORMAT_TEXT ; 
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int,TYPE_1__*) ; 
 scalar_t__ NIL ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC4(CustomScanState *node, List *ancestors, ExplainState *es)
{
	ChunkAppendState *state = (ChunkAppendState *) node;

	if (state->sort_options != NIL)
		FUNC3(state, ancestors, es);

	if (es->verbose || es->format != EXPLAIN_FORMAT_TEXT)
		FUNC0("Startup Exclusion", state->startup_exclusion, es);

	if (es->verbose || es->format != EXPLAIN_FORMAT_TEXT)
		FUNC0("Runtime Exclusion", state->runtime_exclusion, es);

	if (state->startup_exclusion)
		FUNC1("Chunks excluded during startup",
									 NULL,
									 FUNC2(state->initial_subplans) -
										 FUNC2(node->custom_ps),
									 es);

	if (state->runtime_exclusion && state->runtime_number_loops > 0)
	{
		int avg_excluded = state->runtime_number_exclusions / state->runtime_number_loops;
		FUNC1("Chunks excluded during runtime", NULL, avg_excluded, es);
	}
}