#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ provolatile; scalar_t__ pronargs; scalar_t__ prorettype; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  HeapTuple ;
typedef  TYPE_1__* Form_pg_proc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_NO_DATA_FOUND ; 
 int /*<<< orphan*/  ERRCODE_UNDEFINED_FUNCTION ; 
 int /*<<< orphan*/  ERROR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  PROCOID ; 
 scalar_t__ PROVOLATILE_IMMUTABLE ; 
 scalar_t__ PROVOLATILE_STABLE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

void
FUNC11(Oid now_func_oid, Oid open_dim_type)
{
	HeapTuple tuple;
	Form_pg_proc now_func;

	/* this function should only be called for hypertabes with integer open time dimension */
	FUNC0(FUNC3(open_dim_type));

	if (!FUNC5(now_func_oid))
		FUNC8(ERROR,
				(FUNC9(ERRCODE_UNDEFINED_FUNCTION), (FUNC10("invalid integer_now function"))));

	tuple = FUNC7(PROCOID, FUNC4(now_func_oid));
	if (!FUNC2(tuple))
	{
		FUNC6(tuple);
		FUNC8(ERROR,
				(FUNC9(ERRCODE_NO_DATA_FOUND),
				 FUNC10("cache lookup failed for function %u", now_func_oid)));
	}

	now_func = (Form_pg_proc) FUNC1(tuple);

	if ((now_func->provolatile != PROVOLATILE_IMMUTABLE &&
		 now_func->provolatile != PROVOLATILE_STABLE) ||
		now_func->pronargs != 0)
	{
		FUNC6(tuple);
		FUNC8(ERROR,
				(FUNC9(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC10("integer_now_func must take no arguments and it must be STABLE")));
	}

	if (now_func->prorettype != open_dim_type)
	{
		FUNC6(tuple);
		FUNC8(ERROR,
				(FUNC9(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC10("return type of integer_now_func must be the same as "
						"the type of the time partitioning column of the hypertable")));
	}
	FUNC6(tuple);
}