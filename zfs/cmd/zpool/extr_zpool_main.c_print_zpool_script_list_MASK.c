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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* FUNC4 (char*,char*) ; 
 char* FUNC5 () ; 

__attribute__((used)) static void
FUNC6(char *subcommand)
{
	char *dir, *sp;

	FUNC3(FUNC1("Available 'zpool %s -c' commands:\n"), subcommand);

	sp = FUNC5();
	if (sp == NULL)
		return;

	dir = FUNC4(sp, ":");
	while (dir != NULL) {
		FUNC2(dir);
		dir = FUNC4(NULL, ":");
	}

	FUNC0(sp);
}