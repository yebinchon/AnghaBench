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
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  S_IRWXU ; 
 int /*<<< orphan*/  True ; 
 scalar_t__ errno ; 
 char* FUNC0 (char*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*) ; 

BOOL
FUNC4(void)
{
	char *home;
	char bmpcache_dir[256];

	home = FUNC0("HOME");

	if (home == NULL)
		return False;

	FUNC3(bmpcache_dir, "%s/%s", home, ".rdesktop");

	if ((FUNC1(bmpcache_dir, S_IRWXU) == -1) && errno != EEXIST)
	{
		FUNC2(bmpcache_dir);
		return False;
	}

	FUNC3(bmpcache_dir, "%s/%s", home, ".rdesktop/cache");

	if ((FUNC1(bmpcache_dir, S_IRWXU) == -1) && errno != EEXIST)
	{
		FUNC2(bmpcache_dir);
		return False;
	}

	return True;
}