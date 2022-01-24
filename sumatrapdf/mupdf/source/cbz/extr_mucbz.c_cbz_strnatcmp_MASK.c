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
 scalar_t__ FUNC0 (char const) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC2(const char *a, const char *b)
{
	int x, y;

	while (*a || *b)
	{
		if (FUNC0(*a) && FUNC0(*b))
		{
			x = *a++ - '0';
			while (FUNC0(*a))
				x = x * 10 + *a++ - '0';
			y = *b++ - '0';
			while (FUNC0(*b))
				y = y * 10 + *b++ - '0';
		}
		else
		{
			x = FUNC1(*a++);
			y = FUNC1(*b++);
		}
		if (x < y)
			return -1;
		if (x > y)
			return 1;
	}

	return 0;
}