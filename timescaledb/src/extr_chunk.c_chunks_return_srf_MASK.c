#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint64 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_7__ {int /*<<< orphan*/  table_id; } ;
struct TYPE_6__ {size_t call_cntr; size_t max_calls; scalar_t__ user_fctx; } ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  TYPE_1__ FuncCallContext ;
typedef  int /*<<< orphan*/  Datum ;
typedef  TYPE_2__ Chunk ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC0 () ; 
 TYPE_1__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ TYPEFUNC_SCALAR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static Datum
FUNC8(FunctionCallInfo fcinfo)
{
	FuncCallContext *funcctx;
	uint64 call_cntr;
	TupleDesc tupdesc;
	Chunk **result_set;

	/* stuff done only on the first call of the function */
	if (FUNC0())
	{
		/* Build a tuple descriptor for our result type */
		/* not quite necessary */
		if (FUNC7(fcinfo, NULL, &tupdesc) != TYPEFUNC_SCALAR)
			FUNC4(ERROR,
					(FUNC5(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC6("function returning record called in context "
							"that cannot accept type record")));
	}

	/* stuff done on every call of the function */
	funcctx = FUNC1();

	call_cntr = funcctx->call_cntr;
	result_set = (Chunk **) funcctx->user_fctx;

	/* do when there is more left to send */
	if (call_cntr < funcctx->max_calls)
		FUNC3(funcctx, result_set[call_cntr]->table_id);
	else /* do when there is no more left */
		FUNC2(funcctx);
}