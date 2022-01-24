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
 float FUNC0 (char const*,char**) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

float
FUNC2(const char *str, float percent, float font_size)
{
	char *end;
	float val;

	val = FUNC0(str, &end);
	if (end == str)
		return 0; /* failed */

	if (!FUNC1(end, "px")) return val;

	if (!FUNC1(end, "pt")) return val * 1.0f;
	if (!FUNC1(end, "pc")) return val * 12.0f;
	if (!FUNC1(end, "mm")) return val * 2.83464567f;
	if (!FUNC1(end, "cm")) return val * 28.3464567f;
	if (!FUNC1(end, "in")) return val * 72.0f;

	if (!FUNC1(end, "em")) return val * font_size;
	if (!FUNC1(end, "ex")) return val * font_size * 0.5f;

	if (!FUNC1(end, "%"))
		return val * percent * 0.01f;

	if (end[0] == 0)
		return val;

	return 0;
}