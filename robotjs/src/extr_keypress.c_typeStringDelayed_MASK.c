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

/* Variables and functions */
 scalar_t__ FUNC0 (double,double) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(const char *str, const unsigned cpm)
{
	/* Characters per second */
	const double cps = (double)cpm / 60.0;

	/* Average milli-seconds per character */
	const double mspc = (cps == 0.0) ? 0.0 : 1000.0 / cps;

	while (*str != '\0') {
		FUNC2(*str++);
		FUNC1(mspc + (FUNC0(0.0, 62.5)));
	}
}