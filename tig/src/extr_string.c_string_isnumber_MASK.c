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
 int /*<<< orphan*/  FUNC0 (char const) ; 

bool
FUNC1(const char *str)
{
	int pos;

	for (pos = 0; str[pos]; pos++) {
		if (!FUNC0(str[pos]))
			return false;
	}

	return pos > 0;
}