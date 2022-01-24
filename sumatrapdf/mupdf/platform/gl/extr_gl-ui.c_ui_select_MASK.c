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
 scalar_t__ FUNC0 (void const*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (char const*) ; 

int FUNC3(const void *id, const char *current, const char *options[], int n)
{
	int i, choice = -1;
	if (FUNC0(id, current, 0, n))
	{
		for (i = 0; i < n; ++i)
			if (FUNC2(options[i]))
				choice = i;
		FUNC1();
	}
	return choice;
}