#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_14__ {size_t current; size_t num_subplans; int /*<<< orphan*/  (* choose_next_subplan ) (TYPE_5__*) ;int /*<<< orphan*/ ** subplanstates; } ;
struct TYPE_10__ {int ps_TupFromTlist; int /*<<< orphan*/ * ps_ProjInfo; int /*<<< orphan*/  ps_ResultTupleSlot; TYPE_3__* ps_ExprContext; } ;
struct TYPE_11__ {TYPE_1__ ps; } ;
struct TYPE_13__ {TYPE_2__ ss; } ;
struct TYPE_12__ {int /*<<< orphan*/ * ecxt_scantuple; } ;
typedef  int /*<<< orphan*/  PlanState ;
typedef  scalar_t__ ExprDoneCond ;
typedef  TYPE_3__ ExprContext ;
typedef  TYPE_4__ CustomScanState ;
typedef  TYPE_5__ ChunkAppendState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,...) ; 
 scalar_t__ ExprEndResult ; 
 scalar_t__ ExprMultipleResult ; 
 size_t INVALID_SUBPLAN_INDEX ; 
 size_t NO_MATCHING_SUBPLANS ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 

__attribute__((used)) static TupleTableSlot *
FUNC9(CustomScanState *node)
{
	ChunkAppendState *state = (ChunkAppendState *) node;
	TupleTableSlot *subslot;
	ExprContext *econtext = node->ss.ps.ps_ExprContext;
#if PG96
	TupleTableSlot *resultslot;
	ExprDoneCond isDone;
#endif

	if (state->current == INVALID_SUBPLAN_INDEX)
		state->choose_next_subplan(state);

#if PG96
	if (node->ss.ps.ps_TupFromTlist)
	{
		resultslot = ExecProject(node->ss.ps.ps_ProjInfo, &isDone);

		if (isDone == ExprMultipleResult)
			return resultslot;

		node->ss.ps.ps_TupFromTlist = false;
	}
#endif

	while (true)
	{
		PlanState *subnode;

		FUNC1();

		if (state->current == NO_MATCHING_SUBPLANS)
			return FUNC2(node->ss.ps.ps_ResultTupleSlot);

		FUNC0(state->current >= 0 && state->current < state->num_subplans);

		subnode = state->subplanstates[state->current];

		/*
		 * get a tuple from the subplan
		 */
		subslot = FUNC3(subnode);

		if (!FUNC6(subslot))
		{
			/*
			 * If the subplan gave us something check if we need
			 * to do projection otherwise return as is.
			 */
			if (node->ss.ps.ps_ProjInfo == NULL)
				return subslot;

			FUNC5(econtext);
			econtext->ecxt_scantuple = subslot;

#if PG96
			resultslot = ExecProject(node->ss.ps.ps_ProjInfo, &isDone);

			if (isDone != ExprEndResult)
			{
				node->ss.ps.ps_TupFromTlist = (isDone == ExprMultipleResult);
				return resultslot;
			}
#else
			return FUNC4(node->ss.ps.ps_ProjInfo);
#endif
		}

		state->choose_next_subplan(state);

		/* loop back and try to get a tuple from the new subplan */
	}
}