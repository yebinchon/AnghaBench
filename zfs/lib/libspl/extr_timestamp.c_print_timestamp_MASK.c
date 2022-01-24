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
typedef  scalar_t__ uint_t ;
typedef  char* time_t ;
typedef  int /*<<< orphan*/  dstr ;

/* Variables and functions */
 scalar_t__ DDATE ; 
 scalar_t__ UDATE ; 
 int /*<<< orphan*/  _DATE_FMT ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*,int,char*,int /*<<< orphan*/ ) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 

void
FUNC5(uint_t timestamp_fmt)
{
	time_t t = FUNC4(NULL);
	static char *fmt = NULL;

	/* We only need to retrieve this once per invocation */
	if (fmt == NULL)
		fmt = FUNC1(_DATE_FMT);

	if (timestamp_fmt == UDATE) {
		(void) FUNC2("%ld\n", t);
	} else if (timestamp_fmt == DDATE) {
		char dstr[64];
		int len;

		len = FUNC3(dstr, sizeof (dstr), fmt, FUNC0(&t));
		if (len > 0)
			(void) FUNC2("%s\n", dstr);
	}
}