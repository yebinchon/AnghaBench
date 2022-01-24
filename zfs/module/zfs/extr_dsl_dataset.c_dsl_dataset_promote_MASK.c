#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  objset_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
struct TYPE_5__ {char const* ddpa_clonename; int /*<<< orphan*/  err_ds; int /*<<< orphan*/  cr; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ dsl_dataset_promote_arg_t ;
struct TYPE_7__ {int /*<<< orphan*/  dp_meta_objset; } ;
struct TYPE_6__ {int /*<<< orphan*/  ds_snapnames_zapobj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_RESERVED ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsl_dataset_promote_check ; 
 int /*<<< orphan*/  dsl_dataset_promote_sync ; 
 int FUNC6 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

int
FUNC13(const char *name, char *conflsnap)
{
	dsl_dataset_promote_arg_t ddpa = { 0 };
	uint64_t numsnaps;
	int error;
	nvpair_t *snap_pair;
	objset_t *os;

	/*
	 * We will modify space proportional to the number of
	 * snapshots.  Compute numsnaps.
	 */
	error = FUNC2(name, FTAG, &os);
	if (error != 0)
		return (error);
	error = FUNC12(FUNC3(os)->dp_meta_objset,
	    FUNC5(FUNC1(os))->ds_snapnames_zapobj,
	    &numsnaps);
	FUNC4(os, FTAG);
	if (error != 0)
		return (error);

	ddpa.ddpa_clonename = name;
	ddpa.err_ds = FUNC7();
	ddpa.cr = FUNC0();

	error = FUNC6(name, dsl_dataset_promote_check,
	    dsl_dataset_promote_sync, &ddpa,
	    2 + numsnaps, ZFS_SPACE_CHECK_RESERVED);

	/*
	 * Return the first conflicting snapshot found.
	 */
	snap_pair = FUNC9(ddpa.err_ds, NULL);
	if (snap_pair != NULL && conflsnap != NULL)
		(void) FUNC11(conflsnap, FUNC10(snap_pair));

	FUNC8(ddpa.err_ds);
	return (error);
}