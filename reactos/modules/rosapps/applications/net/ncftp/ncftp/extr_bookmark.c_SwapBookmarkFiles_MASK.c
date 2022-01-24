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
typedef  int /*<<< orphan*/  pathName ;
typedef  int /*<<< orphan*/  path2 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  kBookmarkFileName ; 
 int /*<<< orphan*/  kTmpBookmarkFileName ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,unsigned int) ; 

__attribute__((used)) static int
FUNC6(void)
{
	char pidStr[32];
	char pathName[256], path2[256];

	(void) FUNC0(path2, sizeof(path2), kBookmarkFileName);
	(void) FUNC0(pathName, sizeof(pathName), kTmpBookmarkFileName);
	(void) FUNC5(pidStr, "-%u.txt", (unsigned int) FUNC2());
	(void) FUNC1(pathName, pidStr);

	(void) FUNC3(path2);
	if (FUNC4(pathName, path2) < 0) {
		return (-1);
	}
	return (0);
}