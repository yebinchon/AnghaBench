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
 int errno ; 
 unsigned long FUNC0 (char const*,char**,int) ; 

int
FUNC1(const char *hw_serial, char **nptr, int base, unsigned long *result)
{
	char *end;

	*result = FUNC0(hw_serial, &end, base);
	if (*result == 0)
		return (errno);
	return (0);
}