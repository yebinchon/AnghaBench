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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  tsc_freq ;

/* Variables and functions */
 int TEVSZ ; 
 int UINT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int* tevbuf ; 

__attribute__((used)) static void
FUNC2(void)
{
	uint64_t min, max, diff, sum, tsc_freq;
	size_t len;
	int j;

	min = UINT64_MAX;
	max = 0;
	sum = 0;

	len = sizeof(tsc_freq);
	FUNC1("machdep.tsc_freq", &tsc_freq, &len, NULL, 0);

	for (j = 1; j < TEVSZ; j++) {
		/* Convert a tsc diff into microseconds */
		diff = (tevbuf[j] - tevbuf[j-1]) * 1000000 / tsc_freq;
		sum += diff;
		if (min > diff)
			min = diff;
		if (max < diff)
			max = diff;
	}

	FUNC0("timers done: usecs, min %llu, max %llu, mean %llu\n", min, max,
	    sum/(TEVSZ - 1));
}