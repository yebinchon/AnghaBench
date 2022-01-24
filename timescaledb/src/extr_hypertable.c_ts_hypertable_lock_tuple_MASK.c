#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  HTSU_Result ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_TS_HYPERTABLE_NOT_EXIST ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  RowExclusiveLock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  tuple_found_lock ; 

HTSU_Result
FUNC7(Oid table_relid)
{
	HTSU_Result result;
	int num_found;

	num_found = FUNC6(FUNC3(FUNC5(table_relid)),
								FUNC4(table_relid),
								tuple_found_lock,
								&result,
								RowExclusiveLock,
								true);

	if (num_found != 1)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_TS_HYPERTABLE_NOT_EXIST),
				 FUNC2("table \"%s\" is not a hypertable", FUNC4(table_relid))));

	return result;
}