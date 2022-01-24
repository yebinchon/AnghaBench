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
 int /*<<< orphan*/  ZFS_DEBUG_DPRINTF ; 
 scalar_t__ FUNC0 (char*) ; 
 int dprintf_print_all ; 
 char* dprintf_string ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  zfs_flags ; 

void
FUNC4(int *argc, char **argv)
{
	int i, j;

	/*
	 * Debugging can be specified two ways: by setting the
	 * environment variable ZFS_DEBUG, or by including a
	 * "debug=..."  argument on the command line.  The command
	 * line setting overrides the environment variable.
	 */

	for (i = 1; i < *argc; i++) {
		int len = FUNC2("debug=");
		/* First look for a command line argument */
		if (FUNC3("debug=", argv[i], len) == 0) {
			dprintf_string = argv[i] + len;
			/* Remove from args */
			for (j = i; j < *argc; j++)
				argv[j] = argv[j+1];
			argv[j] = NULL;
			(*argc)--;
		}
	}

	if (dprintf_string == NULL) {
		/* Look for ZFS_DEBUG environment variable */
		dprintf_string = FUNC1("ZFS_DEBUG");
	}

	/*
	 * Are we just turning on all debugging?
	 */
	if (FUNC0("on"))
		dprintf_print_all = 1;

	if (dprintf_string != NULL)
		zfs_flags |= ZFS_DEBUG_DPRINTF;
}