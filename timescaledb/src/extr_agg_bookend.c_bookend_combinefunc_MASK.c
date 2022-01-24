#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  cmp_type_cache; int /*<<< orphan*/  value_type_cache; int /*<<< orphan*/  cmp_func_cache; } ;
typedef  TYPE_1__ TransCache ;
struct TYPE_13__ {scalar_t__ is_null; } ;
struct TYPE_12__ {TYPE_3__ cmp; TYPE_3__ value; } ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_2__ InternalCmpAggStore ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_3__,TYPE_3__) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__,TYPE_3__*) ; 

__attribute__((used)) static inline Datum
FUNC6(MemoryContext aggcontext, InternalCmpAggStore *state1,
					InternalCmpAggStore *state2, char *opname, FunctionCallInfo fcinfo)
{
	MemoryContext old_context;
	TransCache *cache;

	if (state2 == NULL)
		FUNC2(state1);

	cache = FUNC4(fcinfo);

	/*
	 * manually copy all fields from state2 to state1, as per other combine
	 * func like int8_avg_combine
	 */
	if (state1 == NULL)
	{
		old_context = FUNC1(aggcontext);

		state1 =
			(InternalCmpAggStore *) FUNC0(aggcontext, sizeof(InternalCmpAggStore));
		FUNC5(&cache->value_type_cache, state2->value, &state1->value);
		FUNC5(&cache->cmp_type_cache, state2->cmp, &state1->cmp);

		FUNC1(old_context);
		FUNC2(state1);
	}

	if (state1->cmp.is_null && state2->cmp.is_null)
	{
		FUNC2(state1);
	}
	else if (state1->cmp.is_null != state2->cmp.is_null)
	{
		if (state1->cmp.is_null)
			FUNC2(state2);
		else
			FUNC2(state1);
	}
	else if (FUNC3(&cache->cmp_func_cache, fcinfo, opname, state2->cmp, state1->cmp))
	{
		old_context = FUNC1(aggcontext);
		FUNC5(&cache->value_type_cache, state2->value, &state1->value);
		FUNC5(&cache->cmp_type_cache, state2->cmp, &state1->cmp);
		FUNC1(old_context);
	}

	FUNC2(state1);
}