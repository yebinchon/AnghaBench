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
typedef  int /*<<< orphan*/  text ;
typedef  int int64 ;

/* Variables and functions */
 int DAYS_PER_MONTH ; 
 int DAYS_PER_QUARTER ; 
 int DAYS_PER_WEEK ; 
 int DAYS_PER_YEAR ; 
#define  DTK_CENTURY 140 
#define  DTK_DAY 139 
#define  DTK_DECADE 138 
#define  DTK_HOUR 137 
#define  DTK_MICROSEC 136 
#define  DTK_MILLENNIUM 135 
#define  DTK_MILLISEC 134 
#define  DTK_MINUTE 133 
#define  DTK_MONTH 132 
#define  DTK_QUARTER 131 
#define  DTK_SECOND 130 
#define  DTK_WEEK 129 
#define  DTK_YEAR 128 
 int FUNC0 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  ERRCODE_FEATURE_NOT_SUPPORTED ; 
 int /*<<< orphan*/  ERROR ; 
 int UNITS ; 
 int USECS_PER_DAY ; 
 int USECS_PER_HOUR ; 
 int USECS_PER_MINUTE ; 
 int USECS_PER_SEC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int YEARS_PER_CENTURY ; 
 int YEARS_PER_DECADE ; 
 int YEARS_PER_MILLENNIUM ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int64
FUNC7(text *units)
{
	int decode_type, val;
	char *lowunits =
		FUNC3(FUNC1(units), FUNC2(units), false);

	decode_type = FUNC0(0, lowunits, &val);

	if (decode_type != UNITS)
		return -1;

	switch (val)
	{
		case DTK_WEEK:
			return DAYS_PER_WEEK * USECS_PER_DAY;
		case DTK_MILLENNIUM:
			return YEARS_PER_MILLENNIUM * DAYS_PER_YEAR * USECS_PER_DAY;
		case DTK_CENTURY:
			return YEARS_PER_CENTURY * DAYS_PER_YEAR * USECS_PER_DAY;
		case DTK_DECADE:
			return YEARS_PER_DECADE * DAYS_PER_YEAR * USECS_PER_DAY;
		case DTK_YEAR:
			return 1 * DAYS_PER_YEAR * USECS_PER_DAY;
		case DTK_QUARTER:
			return DAYS_PER_QUARTER * USECS_PER_DAY;
		case DTK_MONTH:
			return DAYS_PER_MONTH * USECS_PER_DAY;
		case DTK_DAY:
			return USECS_PER_DAY;
		case DTK_HOUR:
			return USECS_PER_HOUR;
		case DTK_MINUTE:
			return USECS_PER_MINUTE;
		case DTK_SECOND:
			return USECS_PER_SEC;
		case DTK_MILLISEC:
			return USECS_PER_SEC / 1000;
		case DTK_MICROSEC:
			return 1;
		default:
			FUNC4(ERROR,
					(FUNC5(ERRCODE_FEATURE_NOT_SUPPORTED),
					 FUNC6("timestamp units \"%s\" not supported", lowunits)));
	}
	return -1;
}