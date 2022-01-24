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
typedef  int /*<<< orphan*/  zver_userland ;
typedef  int /*<<< orphan*/  zver_kernel ;

/* Variables and functions */
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 

int
FUNC5(void)
{
	char zver_userland[128];
	char zver_kernel[128];

	if (FUNC3(zver_kernel, sizeof (zver_kernel)) == -1) {
		FUNC0(stderr, "zfs_version_kernel() failed: %s\n",
		    FUNC2(errno));
		return (-1);
	}

	FUNC4(zver_userland, sizeof (zver_userland));

	(void) FUNC1("%s\n", zver_userland);
	(void) FUNC1("zfs-kmod-%s\n", zver_kernel);

	return (0);
}