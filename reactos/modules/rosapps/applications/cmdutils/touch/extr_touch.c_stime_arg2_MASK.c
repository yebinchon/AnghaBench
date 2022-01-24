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
typedef  int time_t ;
struct tm {int tm_isdst; void* tm_year; void* tm_min; void* tm_hour; void* tm_mday; void* tm_mon; } ;

/* Variables and functions */
 void* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 struct tm* FUNC3 (int*) ; 
 int FUNC4 (struct tm*) ; 

void
FUNC5(char *arg, int year, time_t *tvp)
{
	struct tm *t;
					/* Start with the current time. */
	if ((t = FUNC3(&tvp[0])) == NULL)
		FUNC1(1, "localtime");

	t->tm_mon = FUNC0(arg);		/* MMDDhhmm[yy] */
	--t->tm_mon;			/* Convert from 01-12 to 00-11 */
	t->tm_mday = FUNC0(arg);
	t->tm_hour = FUNC0(arg);
	t->tm_min = FUNC0(arg);
	if (year)
		t->tm_year = FUNC0(arg);

	t->tm_isdst = -1;		/* Figure out DST. */
	tvp[0] = tvp[1] = FUNC4(t);
	if (tvp[0] == -1)
		FUNC2(1,
	"out of range or illegal time specification: MMDDhhmm[yy]");
}