#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ zfs_bookmark_phys_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC6(const char *dsname, const char *bmname, nvlist_t *props)
{
	dsl_pool_t *dp;
	dsl_dataset_t *ds;
	zfs_bookmark_phys_t bmark_phys = { 0 };
	int err;

	err = FUNC4(dsname, FTAG, &dp);
	if (err != 0)
		return (err);
	err = FUNC2(dp, dsname, FTAG, &ds);
	if (err != 0) {
		FUNC5(dp, FTAG);
		return (err);
	}

	err = FUNC1(ds, bmname, &bmark_phys);
	if (err != 0)
		goto out;

	FUNC0(dp, &bmark_phys, NULL, props);
out:
	FUNC3(ds, FTAG);
	FUNC5(dp, FTAG);
	return (err);
}