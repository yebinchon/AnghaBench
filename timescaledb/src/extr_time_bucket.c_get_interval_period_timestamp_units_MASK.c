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
struct TYPE_3__ {scalar_t__ month; scalar_t__ time; int day; } ;
typedef  TYPE_1__ Interval ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int SECS_PER_DAY ; 
 int USECS_PER_DAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static inline int64
FUNC4(Interval *interval)
{
	if (interval->month != 0)
	{
		FUNC0(ERROR,
				(FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC2("interval defined in terms of month, year, century etc. not supported")));
	}
#ifdef HAVE_INT64_TIMESTAMP
	return interval->time + (interval->day * USECS_PER_DAY);
#else
	if (interval->time != FUNC3(interval->time))
	{
		FUNC0(ERROR,
				(FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC2("interval must not have sub-second precision")));
	}
	return interval->time + (interval->day * SECS_PER_DAY);
#endif
}