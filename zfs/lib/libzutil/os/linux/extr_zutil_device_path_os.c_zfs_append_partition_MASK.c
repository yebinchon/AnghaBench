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
 char* UDISK_ROOT ; 
 char* ZVOL_ROOT ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

int
FUNC4(char *path, size_t max_len)
{
	int len = FUNC2(path);

	if ((FUNC3(path, UDISK_ROOT, FUNC2(UDISK_ROOT)) == 0) ||
	    (FUNC3(path, ZVOL_ROOT, FUNC2(ZVOL_ROOT)) == 0)) {
		if (len + 6 >= max_len)
			return (-1);

		(void) FUNC1(path, "-part1");
		len += 6;
	} else {
		if (len + 2 >= max_len)
			return (-1);

		if (FUNC0(path[len-1])) {
			(void) FUNC1(path, "p1");
			len += 2;
		} else {
			(void) FUNC1(path, "1");
			len += 1;
		}
	}

	return (len);
}