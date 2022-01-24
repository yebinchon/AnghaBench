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
typedef  int /*<<< orphan*/  zpool_handle_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int is_force ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

nvlist_t *
FUNC9(zpool_handle_t *zhp, nvlist_t *props, int force, int check_rep,
    boolean_t replacing, boolean_t dryrun, int argc, char **argv)
{
	nvlist_t *newroot;
	nvlist_t *poolconfig = NULL;
	is_force = force;

	/*
	 * Construct the vdev specification.  If this is successful, we know
	 * that we have a valid specification, and that all devices can be
	 * opened.
	 */
	if ((newroot = FUNC1(props, argc, argv)) == NULL)
		return (NULL);

	if (zhp && ((poolconfig = FUNC8(zhp, NULL)) == NULL)) {
		FUNC6(newroot);
		return (NULL);
	}

	/*
	 * Validate each device to make sure that it's not shared with another
	 * subsystem.  We do this even if 'force' is set, because there are some
	 * uses (such as a dedicated dump device) that even '-f' cannot
	 * override.
	 */
	if (FUNC3(poolconfig, newroot, force, replacing, B_FALSE)) {
		FUNC6(newroot);
		return (NULL);
	}

	/*
	 * Check the replication level of the given vdevs and report any errors
	 * found.  We include the existing pool spec, if any, as we need to
	 * catch changes against the existing replication level.
	 */
	if (check_rep && FUNC0(poolconfig, newroot) != 0) {
		FUNC6(newroot);
		return (NULL);
	}

	/*
	 * On pool create the new vdev spec must have one normal vdev.
	 */
	if (poolconfig == NULL && FUNC5(newroot) == 0) {
		FUNC7(FUNC2("at least one general top-level vdev must "
		    "be specified\n"));
		FUNC6(newroot);
		return (NULL);
	}

	/*
	 * Run through the vdev specification and label any whole disks found.
	 */
	if (!dryrun && FUNC4(zhp, newroot) != 0) {
		FUNC6(newroot);
		return (NULL);
	}

	return (newroot);
}