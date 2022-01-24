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
typedef  scalar_t__ time_t ;
struct tm {int tm_mday; char tm_year; char tm_mon; char tm_hour; char tm_min; char tm_sec; } ;
typedef  scalar_t__ int64_t ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (struct tm*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct tm*) ; 

__attribute__((used)) static int64_t
FUNC4(fz_context *ctx, const char *s)
{
	int tz_sign, tz_hour, tz_min, tz_adj;
	struct tm tm;
	time_t utc;

	if (!s)
		return 0;

	FUNC2(&tm, 0, sizeof tm);
	tm.tm_mday = 1;

	tz_sign = 1;
	tz_hour = 0;
	tz_min = 0;

	if (s[0] == 'D' && s[1] == ':')
		s += 2;

	if (!FUNC1(s[0]) || !FUNC1(s[1]) || !FUNC1(s[2]) || !FUNC1(s[3]))
	{
		FUNC0(ctx, "invalid date format (missing year)");
		return 0;
	}
	tm.tm_year = (s[0]-'0')*1000 + (s[1]-'0')*100 + (s[2]-'0')*10 + (s[3]-'0') - 1900;
	s += 4;

	if (FUNC1(s[0]) && FUNC1(s[1]))
	{
		tm.tm_mon = (s[0]-'0')*10 + (s[1]-'0') - 1; /* month is 0-11 in struct tm */
		s += 2;
		if (FUNC1(s[0]) && FUNC1(s[1]))
		{
			tm.tm_mday = (s[0]-'0')*10 + (s[1]-'0');
			s += 2;
			if (FUNC1(s[0]) && FUNC1(s[1]))
			{
				tm.tm_hour = (s[0]-'0')*10 + (s[1]-'0');
				s += 2;
				if (FUNC1(s[0]) && FUNC1(s[1]))
				{
					tm.tm_min = (s[0]-'0')*10 + (s[1]-'0');
					s += 2;
					if (FUNC1(s[0]) && FUNC1(s[1]))
					{
						tm.tm_sec = (s[0]-'0')*10 + (s[1]-'0');
						s += 2;
					}
				}
			}
		}
	}

	if (s[0] == 'Z')
	{
		s += 1;
	}
	else if ((s[0] == '-' || s[0] == '+') && FUNC1(s[1]) && FUNC1(s[2]))
	{
		tz_sign = (s[0] == '-') ? -1 : 1;
		tz_hour = (s[1]-'0')*10 + (s[2]-'0');
		s += 3;
		if (s[0] == '\'' && FUNC1(s[1]) && FUNC1(s[2]))
		{
			tz_min = (s[1]-'0')*10 + (s[2]-'0');
			s += 3;
			if (s[0] == '\'')
				s += 1;
		}
	}

	if (s[0] != 0)
		FUNC0(ctx, "invalid date format (garbage at end)");

	utc = FUNC3(&tm);
	if (utc == (time_t)-1)
	{
		FUNC0(ctx, "date overflow error");
		return 0;
	}

	tz_adj = tz_sign * (tz_hour * 3600 + tz_min * 60);
	return utc - tz_adj;
}