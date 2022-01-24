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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC5(int argc, char *argvp[])
{
	int i = 1;

	switch (FUNC1()) {
	case -1:
		FUNC3("fork");
		FUNC0(1);
		break;
	case 0:
		while (i > 0) {
			int c_count = 0;
			if (FUNC4("a/b/c", "1/2/3/c") == 0)
				c_count++;
			if (FUNC4("1/2/3/c", "a/b/c") == 0)
				c_count++;
			if (c_count) {
				(void) FUNC2(stderr, "c_count: %d", c_count);
			}
		}
		break;
	default:
		while (i > 0) {
			int p_count = 0;
			if (FUNC4("1", "a/b/c/d/e/1") == 0)
				p_count++;
			if (FUNC4("a/b/c/d/e/1", "1") == 0)
				p_count++;
			if (p_count) {
				(void) FUNC2(stderr, "p_count: %d", p_count);
			}
		}
		break;
	}

	return (0);
}