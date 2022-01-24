#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_5__ {int /*<<< orphan*/  ds_dir; } ;
typedef  TYPE_1__ dsl_dataset_t ;
struct TYPE_6__ {int /*<<< orphan*/  ddrsa_newsnapname; int /*<<< orphan*/  ddrsa_oldsnapname; } ;
typedef  TYPE_2__ dsl_dataset_rename_snapshot_arg_t ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  ENAMETOOLONG ; 
 int ENOENT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ZFS_MAX_DATASET_NAME_LEN ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(dsl_pool_t *dp,
    dsl_dataset_t *hds, void *arg)
{
	dsl_dataset_rename_snapshot_arg_t *ddrsa = arg;
	int error;
	uint64_t val;

	error = FUNC1(hds, ddrsa->ddrsa_oldsnapname, &val);
	if (error != 0) {
		/* ignore nonexistent snapshots */
		return (error == ENOENT ? 0 : error);
	}

	/* new name should not exist */
	error = FUNC1(hds, ddrsa->ddrsa_newsnapname, &val);
	if (error == 0)
		error = FUNC0(EEXIST);
	else if (error == ENOENT)
		error = 0;

	/* dataset name + 1 for the "@" + the new snapshot name must fit */
	if (FUNC2(hds->ds_dir) + 1 +
	    FUNC3(ddrsa->ddrsa_newsnapname) >= ZFS_MAX_DATASET_NAME_LEN)
		error = FUNC0(ENAMETOOLONG);

	return (error);
}