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
typedef  int /*<<< orphan*/  zfs_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int ZFS_TYPE_FILESYSTEM ; 
 int ZFS_TYPE_VOLUME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  g_zfs ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(int argc, char **argv)
{
	zfs_handle_t *zhp;
	int ret = 0;

	/* check options */
	if (argc > 1 && argv[1][0] == '-') {
		(void) FUNC0(stderr, FUNC1("invalid option '%c'\n"),
		    argv[1][1]);
		FUNC2(B_FALSE);
	}

	/* check number of arguments */
	if (argc < 2) {
		(void) FUNC0(stderr, "%s", FUNC1("missing clone filesystem"
		    " argument\n"));
		FUNC2(B_FALSE);
	}
	if (argc > 2) {
		(void) FUNC0(stderr, "%s", FUNC1("too many arguments\n"));
		FUNC2(B_FALSE);
	}

	zhp = FUNC4(g_zfs, argv[1], ZFS_TYPE_FILESYSTEM | ZFS_TYPE_VOLUME);
	if (zhp == NULL)
		return (1);

	ret = (FUNC5(zhp) != 0);


	FUNC3(zhp);
	return (ret);
}