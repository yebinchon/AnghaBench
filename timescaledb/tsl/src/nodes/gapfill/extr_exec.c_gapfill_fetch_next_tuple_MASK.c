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
typedef  int /*<<< orphan*/  TupleTableSlot ;
struct TYPE_3__ {int /*<<< orphan*/  gapfill_typid; int /*<<< orphan*/  subslot_time; int /*<<< orphan*/  time_index; int /*<<< orphan*/ * subslot; } ;
typedef  TYPE_1__ GapFillState ;
typedef  int /*<<< orphan*/  Datum ;
typedef  int /*<<< orphan*/  CustomScanState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static TupleTableSlot *
FUNC7(GapFillState *state)
{
	Datum time_value;
	bool isnull;
	TupleTableSlot *subslot = FUNC4((CustomScanState *) state);

	if (!subslot)
		return NULL;

	state->subslot = subslot;
	time_value = FUNC6(subslot, FUNC0(state->time_index), &isnull);
	if (isnull)
		FUNC1(ERROR,
				(FUNC2(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC3("invalid time_bucket_gapfill argument: ts cannot be NULL")));

	state->subslot_time = FUNC5(time_value, state->gapfill_typid);

	return subslot;
}