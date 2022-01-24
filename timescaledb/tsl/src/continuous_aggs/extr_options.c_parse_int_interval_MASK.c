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
typedef  scalar_t__ int64 ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,scalar_t__*) ; 

__attribute__((used)) static inline int64
FUNC4(const char *value, int64 min, int64 max, const char *option_name)
{
	int64 result;
	if (!FUNC3(value, true, &result))
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC2("parameter timescaledb.%s must be an integer for hypertables with integer "
						"time values",
						option_name)));
	if (result < min || result > max)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
				 FUNC2("timescaledb.%s out of range", option_name)));
	return result;
}