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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  F_GETPIPE_SZ ; 
 int /*<<< orphan*/  F_SETPIPE_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 long FUNC1 (int,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*,unsigned long*) ; 

void
FUNC4(int infd)
{
	FILE *procf = FUNC2("/proc/sys/fs/pipe-max-size", "r");

	if (procf != NULL) {
		unsigned long max_psize;
		long cur_psize;
		if (FUNC3(procf, "%lu", &max_psize) > 0) {
			cur_psize = FUNC1(infd, F_GETPIPE_SZ);
			if (cur_psize > 0 &&
			    max_psize > (unsigned long) cur_psize)
				FUNC1(infd, F_SETPIPE_SZ,
				    max_psize);
		}
		FUNC0(procf);
	}
}