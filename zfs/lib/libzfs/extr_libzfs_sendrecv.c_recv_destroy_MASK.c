#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ zfs_type; } ;
typedef  TYPE_1__ zfs_handle_t ;
struct TYPE_11__ {scalar_t__ verbose; scalar_t__ force; } ;
typedef  TYPE_2__ recvflags_t ;
typedef  int /*<<< orphan*/  prop_changelist_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  libzfs_handle_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  MS_FORCE ; 
 int SPA_VERSION_USERREFS ; 
 int /*<<< orphan*/  ZFS_PROP_NAME ; 
 int /*<<< orphan*/  ZFS_TYPE_DATASET ; 
 scalar_t__ ZFS_TYPE_SNAPSHOT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char const*) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int FUNC11 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char const*,scalar_t__) ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 
 TYPE_1__* FUNC15 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (TYPE_1__*,int*) ; 

__attribute__((used)) static int
FUNC17(libzfs_handle_t *hdl, const char *name, int baselen,
    char *newname, recvflags_t *flags)
{
	int err = 0;
	prop_changelist_t *clp;
	zfs_handle_t *zhp;
	boolean_t defer = B_FALSE;
	int spa_version;

	zhp = FUNC15(hdl, name, ZFS_TYPE_DATASET);
	if (zhp == NULL)
		return (-1);
	clp = FUNC1(zhp, ZFS_PROP_NAME, 0,
	    flags->force ? MS_FORCE : 0);
	if (FUNC14(zhp) == ZFS_TYPE_SNAPSHOT &&
	    FUNC16(zhp, &spa_version) == 0 &&
	    spa_version >= SPA_VERSION_USERREFS)
		defer = B_TRUE;
	FUNC12(zhp);
	if (clp == NULL)
		return (-1);
	err = FUNC3(clp);
	if (err)
		return (err);

	if (flags->verbose)
		(void) FUNC10("attempting destroy %s\n", name);
	if (zhp->zfs_type == ZFS_TYPE_SNAPSHOT) {
		nvlist_t *nv = FUNC6();
		FUNC5(nv, name);
		err = FUNC9(nv, defer, NULL);
		FUNC7(nv);
	} else {
		err = FUNC8(name);
	}
	if (err == 0) {
		if (flags->verbose)
			(void) FUNC10("success\n");
		FUNC4(clp, name);
	}

	(void) FUNC2(clp);
	FUNC0(clp);

	/*
	 * Deferred destroy might destroy the snapshot or only mark it to be
	 * destroyed later, and it returns success in either case.
	 */
	if (err != 0 || (defer && FUNC13(hdl, name,
	    ZFS_TYPE_SNAPSHOT))) {
		err = FUNC11(hdl, name, NULL, baselen, newname, flags);
	}

	return (err);
}