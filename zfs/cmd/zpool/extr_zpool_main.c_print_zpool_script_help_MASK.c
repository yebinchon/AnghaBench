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
 int /*<<< orphan*/  FUNC1 (char**,int) ; 
 int FUNC2 (char*,char**,int /*<<< orphan*/ *,char***,int*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*) ; 

__attribute__((used)) static void
FUNC4(char *name, char *path)
{
	char *argv[] = {path, "-h", NULL};
	char **lines = NULL;
	int lines_cnt = 0;
	int rc;

	rc = FUNC2(path, argv, NULL, &lines,
	    &lines_cnt);
	if (rc != 0 || lines == NULL || lines_cnt <= 0) {
		if (lines != NULL)
			FUNC1(lines, lines_cnt);
		return;
	}

	for (int i = 0; i < lines_cnt; i++)
		if (!FUNC0(lines[i]))
			FUNC3("  %-14s  %s\n", name, lines[i]);

	FUNC1(lines, lines_cnt);
}