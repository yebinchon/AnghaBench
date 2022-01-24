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
struct tm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ctx ; 
 struct tm* FUNC0 (scalar_t__*) ; 
 struct tm* FUNC1 (scalar_t__*,struct tm*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  selected_annot ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,struct tm*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static void FUNC5(void)
{
	time_t secs = FUNC2(ctx, selected_annot);
	if (secs > 0)
	{
#ifdef _POSIX_SOURCE
		struct tm tmbuf, *tm = gmtime_r(&secs, &tmbuf);
#else
		struct tm *tm = FUNC0(&secs);
#endif
		char buf[100];
		if (tm)
		{
			FUNC3(buf, sizeof buf, "%Y-%m-%d %H:%M UTC", tm);
			FUNC4("Date: %s", buf);
		}
	}
}