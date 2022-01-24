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

__attribute__((used)) static int FUNC0(char *s)
{
	int neg = 0;
	int i = 0;

	while (*s == '-')
	{
		neg = 1;
		++s;
	}
	while (*s == '+')
	{
		++s;
	}

	while (*s >= '0' && *s <= '9')
	{
		/* We deliberately ignore overflow here. */
		i = i * 10 + (*s - '0');
		++s;
	}

	return neg ? -i : i;
}