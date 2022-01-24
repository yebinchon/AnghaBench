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
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static int FUNC3(const char *val)
{
	if (FUNC2(val, "cop"))
		return 9;
	if (FUNC2(val, "app"))
		return 10;
	if (val[0] == 'a' && val[1] == 'a' && val[2] >= '0' && val[2] <= '9')
		return  FUNC1(FUNC0(&val[2]), 0, 8);
	return 8;
}