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
 int SIZEOF_ARG ; 
 int FUNC0 (scalar_t__*,char const**) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char const**,int*,char*) ; 
 scalar_t__ grep_argv ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static bool
FUNC5(void)
{
	const char *argv[SIZEOF_ARG];
	int argc = 0;
	char *grep = FUNC3("grep: ");

	FUNC4();

	if (!grep || !*grep || !FUNC2(argv, &argc, grep))
		return false;
	if (grep_argv)
		FUNC1(grep_argv);
	return FUNC0(&grep_argv, argv);
}