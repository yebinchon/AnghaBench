#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dispatch; int /*<<< orphan*/ * hypertable_cache; int /*<<< orphan*/  subplan; int /*<<< orphan*/  hypertable_relid; } ;
struct TYPE_4__ {int /*<<< orphan*/  custom_ps; } ;
typedef  int /*<<< orphan*/  PlanState ;
typedef  int /*<<< orphan*/  Hypertable ;
typedef  int /*<<< orphan*/  EState ;
typedef  TYPE_1__ CustomScanState ;
typedef  TYPE_2__ ChunkDispatchState ;
typedef  int /*<<< orphan*/  Cache ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 () ; 

__attribute__((used)) static void
FUNC7(CustomScanState *node, EState *estate, int eflags)
{
	ChunkDispatchState *state = (ChunkDispatchState *) node;
	Hypertable *ht;
	Cache *hypertable_cache;
	PlanState *ps;

	hypertable_cache = FUNC6();

	ht = FUNC5(hypertable_cache, state->hypertable_relid);

	if (NULL == ht)
	{
		FUNC3(hypertable_cache);
		FUNC1(ERROR, "no hypertable for relid %d", state->hypertable_relid);
	}
	ps = FUNC0(state->subplan, estate, eflags);
	state->hypertable_cache = hypertable_cache;
	state->dispatch = FUNC4(ht, estate);
	node->custom_ps = FUNC2(ps);
}