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
typedef  int /*<<< orphan*/  iostat_cbdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int*,char**,float*,unsigned long*) ; 

__attribute__((used)) static void
FUNC2(int *argc, char **argv, float *interval,
    unsigned long *count, iostat_cbdata_t *cb)
{
	char **tmpargv = argv;
	int argc_for_interval = 0;

	/* Is the last arg an interval value?  Or a guid? */
	if (*argc >= 1 && !FUNC0(1, &argv[*argc - 1], NULL, cb)) {
		/*
		 * The last arg is not a guid, so it's probably an
		 * interval value.
		 */
		argc_for_interval++;

		if (*argc >= 2 &&
		    !FUNC0(1, &argv[*argc - 2], NULL, cb)) {
			/*
			 * The 2nd to last arg is not a guid, so it's probably
			 * an interval value.
			 */
			argc_for_interval++;
		}
	}

	/* Point to our list of possible intervals */
	tmpargv = &argv[*argc - argc_for_interval];

	*argc = *argc - argc_for_interval;
	FUNC1(&argc_for_interval, tmpargv,
	    interval, count);
}