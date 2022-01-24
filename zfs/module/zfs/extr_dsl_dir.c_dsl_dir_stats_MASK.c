#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_16__ {int /*<<< orphan*/  dd_lock; } ;
typedef  TYPE_1__ dsl_dir_t ;
struct TYPE_17__ {int dd_flags; } ;

/* Variables and functions */
 int DD_FLAG_USED_BREAKDOWN ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_PROP_FILESYSTEM_COUNT ; 
 int /*<<< orphan*/  ZFS_PROP_LOGICALUSED ; 
 int /*<<< orphan*/  ZFS_PROP_ORIGIN ; 
 int /*<<< orphan*/  ZFS_PROP_QUOTA ; 
 int /*<<< orphan*/  ZFS_PROP_RESERVATION ; 
 int /*<<< orphan*/  ZFS_PROP_SNAPSHOT_COUNT ; 
 int /*<<< orphan*/  ZFS_PROP_USEDCHILD ; 
 int /*<<< orphan*/  ZFS_PROP_USEDDS ; 
 int /*<<< orphan*/  ZFS_PROP_USEDREFRESERV ; 
 int /*<<< orphan*/  ZFS_PROP_USEDSNAP ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (TYPE_1__*) ; 
 TYPE_3__* FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

void
FUNC16(dsl_dir_t *dd, nvlist_t *nv)
{
	FUNC14(&dd->dd_lock);
	FUNC13(nv, ZFS_PROP_QUOTA,
	    FUNC3(dd));
	FUNC13(nv, ZFS_PROP_RESERVATION,
	    FUNC4(dd));
	FUNC13(nv, ZFS_PROP_LOGICALUSED,
	    FUNC1(dd));
	if (FUNC11(dd)->dd_flags & DD_FLAG_USED_BREAKDOWN) {
		FUNC13(nv, ZFS_PROP_USEDSNAP,
		    FUNC9(dd));
		FUNC13(nv, ZFS_PROP_USEDDS,
		    FUNC7(dd));
		FUNC13(nv, ZFS_PROP_USEDREFRESERV,
		    FUNC8(dd));
		FUNC13(nv, ZFS_PROP_USEDCHILD,
		    FUNC6(dd));
	}
	FUNC15(&dd->dd_lock);

	uint64_t count;
	if (FUNC0(dd, &count) == 0) {
		FUNC13(nv, ZFS_PROP_FILESYSTEM_COUNT,
		    count);
	}
	if (FUNC5(dd, &count) == 0) {
		FUNC13(nv, ZFS_PROP_SNAPSHOT_COUNT,
		    count);
	}

	if (FUNC10(dd)) {
		char buf[ZFS_MAX_DATASET_NAME_LEN];
		FUNC2(dd, buf);
		FUNC12(nv, ZFS_PROP_ORIGIN, buf);
	}

}