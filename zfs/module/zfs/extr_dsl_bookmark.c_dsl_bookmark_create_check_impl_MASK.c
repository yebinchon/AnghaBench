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
struct TYPE_10__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ zfs_bookmark_phys_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_11__ {int /*<<< orphan*/  ds_is_snapshot; } ;
typedef  TYPE_2__ dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EINVAL ; 
 int ESRCH ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,TYPE_2__**,int /*<<< orphan*/ ,char**) ; 
 int FUNC3 (TYPE_2__*,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(dsl_dataset_t *snapds, const char *bookmark_name,
    dmu_tx_t *tx)
{
	dsl_pool_t *dp = FUNC1(tx);
	dsl_dataset_t *bmark_fs;
	char *shortname;
	int error;
	zfs_bookmark_phys_t bmark_phys = { 0 };

	if (!snapds->ds_is_snapshot)
		return (FUNC0(EINVAL));

	error = FUNC2(dp, bookmark_name,
	    &bmark_fs, FTAG, &shortname);
	if (error != 0)
		return (error);

	if (!FUNC4(bmark_fs, snapds, 0)) {
		FUNC5(bmark_fs, FTAG);
		return (FUNC0(EINVAL));
	}

	error = FUNC3(bmark_fs, shortname,
	    &bmark_phys);
	FUNC5(bmark_fs, FTAG);
	if (error == 0)
		return (FUNC0(EEXIST));
	if (error == ESRCH)
		return (0);
	return (error);
}