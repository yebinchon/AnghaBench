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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* KEYMAP_PATH ; 
 int /*<<< orphan*/ * FUNC0 (char*,char*) ; 
 char* FUNC1 (char*) ; 
 char* FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

FILE *
FUNC4(const char *filename)
{
	char *path1, *path2;
	char *home;
	FILE *fp;

	/* Try ~/.rdesktop/keymaps */
	home = FUNC1("HOME");
	if (home)
	{
		path1 = FUNC2(home, ".rdesktop/keymaps");
		path2 = FUNC2(path1, filename);
		FUNC3(path1);
		fp = FUNC0(path2, "r");
		FUNC3(path2);
		if (fp)
			return fp;
	}

	/* Try KEYMAP_PATH */
	path1 = FUNC2(KEYMAP_PATH, filename);
	fp = FUNC0(path1, "r");
	FUNC3(path1);
	if (fp)
		return fp;

	/* Try current directory, in case we are running from the source
	   tree */
	path1 = FUNC2("keymaps", filename);
	fp = FUNC0(path1, "r");
	FUNC3(path1);
	if (fp)
		return fp;

	return NULL;
}