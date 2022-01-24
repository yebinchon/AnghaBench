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
struct TYPE_4__ {int /*<<< orphan*/  zbm_creation_txg; } ;
typedef  TYPE_1__ zfs_bookmark_phys_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXDEV ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,char**) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC5(dsl_pool_t *dp, const char *fullname,
    dsl_dataset_t *later_ds, zfs_bookmark_phys_t *bmp)
{
	char *shortname;
	dsl_dataset_t *ds;
	int error;

	error = FUNC1(dp, fullname, &ds, FTAG, &shortname);
	if (error != 0)
		return (error);

	error = FUNC2(ds, shortname, bmp);
	if (error == 0 && later_ds != NULL) {
		if (!FUNC3(later_ds, ds, bmp->zbm_creation_txg))
			error = FUNC0(EXDEV);
	}
	FUNC4(ds, FTAG);
	return (error);
}