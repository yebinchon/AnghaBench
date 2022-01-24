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
 int SA_OK ; 
 int /*<<< orphan*/  FUNC0 (char**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  get_linux_shareopts_cb ; 

__attribute__((used)) static int
FUNC4(const char *shareopts, char **plinux_opts)
{
	int rc;

	FUNC1(plinux_opts != NULL);

	*plinux_opts = NULL;

	/* no_subtree_check - Default as of nfs-utils v1.1.0 */
	(void) FUNC0(plinux_opts, "no_subtree_check", NULL);

	/* mountpoint - Restrict exports to ZFS mountpoints */
	(void) FUNC0(plinux_opts, "mountpoint", NULL);

	rc = FUNC2(shareopts, get_linux_shareopts_cb,
	    plinux_opts);

	if (rc != SA_OK) {
		FUNC3(*plinux_opts);
		*plinux_opts = NULL;
	}

	return (rc);
}