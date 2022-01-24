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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,...) ; 

char *FUNC4(double val, int figs, char *buf, int len)
{
	char format[80];
	int digitsafterdecimal=figs-(int)FUNC0(FUNC2(FUNC1(val)));
	if(digitsafterdecimal<1) FUNC3(format, 80, "%%.0f");
	else FUNC3(format, 80, "%%.%df", digitsafterdecimal);
	FUNC3(buf, len, format, val);
	return buf;
}