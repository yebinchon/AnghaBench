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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int dummy; } ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 struct tm* FUNC1 (int /*<<< orphan*/ *) ; 
 struct tm* FUNC2 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,struct tm*) ; 

__attribute__((used)) static void
FUNC4(fz_context *ctx, char *s, int n, time_t secs)
{
#ifdef _POSIX_SOURCE
	struct tm tmbuf, *tm = gmtime_r(&secs, &tmbuf);
#else
	struct tm *tm = FUNC1(&secs);
#endif
	if (!tm)
		FUNC0(s, "D:19700101000000Z", n);
	else
		FUNC3(s, n, "D:%Y%m%d%H%M%SZ", tm);
}