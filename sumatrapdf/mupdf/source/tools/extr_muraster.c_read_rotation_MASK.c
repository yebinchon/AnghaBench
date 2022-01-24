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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static int
FUNC3(const char *arg)
{
	int i;

	if (FUNC2(arg, "auto"))
	{
		return -1;
	}

	i = FUNC1(arg);

	i = i % 360;
	if (i % 90 != 0)
	{
		FUNC0(stderr, "Ignoring invalid rotation\n");
		i = 0;
	}

	return i;
}