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
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static int
FUNC1(const char *att, int *x, int *y)
{
	*x = *y = 1;
	if (FUNC0(att, "none")) return 0;
	if (FUNC0(att, "xMin")) *x = 0;
	if (FUNC0(att, "xMid")) *x = 1;
	if (FUNC0(att, "xMax")) *x = 2;
	if (FUNC0(att, "YMin")) *y = 0;
	if (FUNC0(att, "YMid")) *y = 1;
	if (FUNC0(att, "YMax")) *y = 2;
	return 1;
}