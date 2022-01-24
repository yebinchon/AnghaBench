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
struct TYPE_3__ {int /*<<< orphan*/  parsed; int /*<<< orphan*/  is_default; } ;
typedef  TYPE_1__ WithClauseResult ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t ContinuousViewOptionMaxIntervalPerRun ; 
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,int /*<<< orphan*/ ,char*) ; 

int64
FUNC6(Oid column_type, WithClauseResult *with_clause_options,
										  int64 bucket_width)
{
	char *value;
	int64 result;

	FUNC0(!with_clause_options[ContinuousViewOptionMaxIntervalPerRun].is_default);

	value = FUNC1(with_clause_options[ContinuousViewOptionMaxIntervalPerRun].parsed);

	result = FUNC5(value, column_type, "max_interval_per_job");

	if (result < bucket_width)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC4("parameter timescaledb.max_interval_per_job must be at least the size "
						"of the time_bucket width")));
	return result;
}