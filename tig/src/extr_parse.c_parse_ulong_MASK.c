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
 scalar_t__ FUNC0 (char) ; 
 unsigned long FUNC1 (char const*,char**,int) ; 

__attribute__((used)) static bool
FUNC2(const char **pos_ptr, unsigned long *value, char skip, bool optional)
{
	const char *start = *pos_ptr;
	char *end;

	if (*start != skip)
		return optional;

	start++;
	*value = FUNC1(start, &end, 10);
	if (end == start)
		return false;

	while (FUNC0(*end))
		end++;
	*pos_ptr = end;
	return true;
}