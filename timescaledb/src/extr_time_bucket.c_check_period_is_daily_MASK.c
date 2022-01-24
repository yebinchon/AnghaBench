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
typedef  int int64 ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int SECS_PER_DAY ; 
 int USECS_PER_DAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static inline void
FUNC3(int64 period)
{
#ifdef HAVE_INT64_TIMESTAMP
	int64 day = USECS_PER_DAY;
#else
	int64 day = SECS_PER_DAY;
#endif
	if (period < day)
	{
		FUNC0(ERROR,
				(FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC2("interval must not have sub-day precision")));
	}
	if (period % day != 0)
	{
		FUNC0(ERROR,
				(FUNC1(ERRCODE_FEATURE_NOT_SUPPORTED),
				 FUNC2("interval must be a multiple of a day")));
	}
}