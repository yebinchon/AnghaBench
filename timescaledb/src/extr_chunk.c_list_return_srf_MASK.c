#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64 ;
typedef  int /*<<< orphan*/  TupleDesc ;
struct TYPE_5__ {scalar_t__ call_cntr; scalar_t__ max_calls; scalar_t__ user_fctx; } ;
typedef  int /*<<< orphan*/  List ;
typedef  int /*<<< orphan*/  FunctionCallInfo ;
typedef  TYPE_1__ FuncCallContext ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 () ; 
 TYPE_1__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ TYPEFUNC_SCALAR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static Datum
FUNC11(FunctionCallInfo fcinfo)
{
	FuncCallContext *funcctx;
	uint64 call_cntr;
	TupleDesc tupdesc;
	List *result_set;
	Datum retval;

	/* stuff done only on the first call of the function */
	if (FUNC1())
	{
		/* Build a tuple descriptor for our result type */
		/* not quite necessary */
		if (FUNC8(fcinfo, NULL, &tupdesc) != TYPEFUNC_SCALAR)
			FUNC5(ERROR,
					(FUNC6(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC7("function returning record called in context "
							"that cannot accept type record")));
	}

	/* stuff done on every call of the function */
	funcctx = FUNC2();

	call_cntr = funcctx->call_cntr;
	result_set = (List *) funcctx->user_fctx;

	/* do when there is more left to send */
	if (call_cntr < funcctx->max_calls)
	{
		/* store return value and increment linked list */
		retval = FUNC0(FUNC9(result_set));
		funcctx->user_fctx = FUNC10(result_set);
		FUNC4(funcctx, retval);
	}
	else /* do when there is no more left */
		FUNC3(funcctx);
}