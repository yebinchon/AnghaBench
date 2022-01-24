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
typedef  int /*<<< orphan*/  int64 ;
struct TYPE_4__ {int /*<<< orphan*/  gapfill_typid; } ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  TYPE_1__ GapFillState ;
typedef  scalar_t__ GapFillBoundary ;
typedef  int /*<<< orphan*/  Expr ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ GAPFILL_START ; 
 int /*<<< orphan*/  InvalidOid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int64
FUNC10(GapFillState *state, GapFillBoundary boundary, Expr *expr)
{
	Datum arg_value;
	bool isnull;

	/*
	 * add an explicit cast here if types do not match
	 */
	if (FUNC4((Node *) expr) != state->gapfill_typid)
	{
		Oid cast_oid = FUNC7(FUNC4((Node *) expr), state->gapfill_typid);

		expr = (Expr *) FUNC9(cast_oid,
									 state->gapfill_typid,
									 FUNC8(expr),
									 InvalidOid,
									 InvalidOid,
									 0);
	}

	arg_value = FUNC6(state, expr, &isnull);

	if (isnull)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC3("invalid time_bucket_gapfill argument: %s cannot be NULL",
						boundary == GAPFILL_START ? "start" : "finish"),
				 FUNC2(
					 "You can either pass start and finish as arguments or in the WHERE clause")));

	return FUNC5(arg_value, state->gapfill_typid);
}