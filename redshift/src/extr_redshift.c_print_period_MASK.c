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
typedef  int period_t ;

/* Variables and functions */
#define  PERIOD_DAYTIME 131 
#define  PERIOD_NIGHT 130 
#define  PERIOD_NONE 129 
#define  PERIOD_TRANSITION 128 
 char* FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * period_names ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 

__attribute__((used)) static void
FUNC3(period_t period, double transition)
{
	switch (period) {
	case PERIOD_NONE:
	case PERIOD_NIGHT:
	case PERIOD_DAYTIME:
		FUNC2(FUNC0("Period: %s\n"), FUNC1(period_names[period]));
		break;
	case PERIOD_TRANSITION:
		FUNC2(FUNC0("Period: %s (%.2f%% day)\n"),
		       FUNC1(period_names[period]),
		       transition*100);
		break;
	}
}