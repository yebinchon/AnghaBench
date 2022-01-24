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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 char const* pool ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int unexpected_failures ; 

int
FUNC5(int argc, const char *argv[])
{
	(void) FUNC2();

	if (argc != 2) {
		(void) FUNC3("usage: %s <pool>\n",
		    argv[0]);
		FUNC0(2);
	}
	pool = argv[1];

	FUNC4();

	FUNC1();
	return (unexpected_failures);
}