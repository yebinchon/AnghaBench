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
typedef  scalar_t__ int64 ;
typedef  int /*<<< orphan*/  VariableStatData ;
struct TYPE_3__ {int /*<<< orphan*/  vartype; } ;
typedef  TYPE_1__ Var ;
typedef  int /*<<< orphan*/  PlannerInfo ;
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Node ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 double INVALID_ESTIMATE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static double
FUNC9(PlannerInfo *root, Var *var)
{
	VariableStatData vardata;
	Oid ltop;
	Datum max_datum, min_datum;
	volatile int64 max, min;
	volatile bool valid;

	FUNC5(root, (Node *) var, 0, &vardata);
	FUNC6(var->vartype, true, false, false, &ltop, NULL, NULL, NULL);
	valid = FUNC7(root, &vardata, ltop, &min_datum, &max_datum);
	FUNC4(vardata);

	if (!valid)
		return INVALID_ESTIMATE;

	FUNC3();
	{
		max = FUNC8(max_datum, var->vartype);
		min = FUNC8(min_datum, var->vartype);
	}
	FUNC1();
	{
		valid = false;
		FUNC0();
	}
	FUNC2();

	if (!valid)
		return INVALID_ESTIMATE;

	return (double) (max - min);
}