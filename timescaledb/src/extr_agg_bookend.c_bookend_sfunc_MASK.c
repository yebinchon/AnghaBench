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
struct TYPE_13__ {int /*<<< orphan*/  cmp; int /*<<< orphan*/  value; } ;
struct TYPE_12__ {int /*<<< orphan*/  is_null; } ;
typedef  TYPE_2__ PolyDatum ;
typedef  int /*<<< orphan*/  MemoryContext ;
typedef  TYPE_3__ InternalCmpAggStore ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,TYPE_2__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline Datum
FUNC6(MemoryContext aggcontext, InternalCmpAggStore *state, PolyDatum value, PolyDatum cmp,
			  char *opname, FunctionCallInfo fcinfo)
{
	MemoryContext old_context;
	TransCache *cache = FUNC4(fcinfo);

	old_context = FUNC1(aggcontext);

	if (state == NULL)
	{
		state = (InternalCmpAggStore *) FUNC0(aggcontext, sizeof(InternalCmpAggStore));
		FUNC5(&cache->value_type_cache, value, &state->value);
		FUNC5(&cache->cmp_type_cache, cmp, &state->cmp);
	}
	else
	{
		/* only do comparison if cmp is not NULL */
		if (!cmp.is_null &&
			FUNC3(&cache->cmp_func_cache, fcinfo, opname, cmp, state->cmp))
		{
			FUNC5(&cache->value_type_cache, value, &state->value);
			FUNC5(&cache->cmp_type_cache, cmp, &state->cmp);
		}
	}
	FUNC1(old_context);

	FUNC2(state);
}