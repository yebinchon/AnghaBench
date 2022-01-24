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
struct TYPE_4__ {scalar_t__ zc_nvlist_dst; int /*<<< orphan*/  zc_name; } ;
typedef  TYPE_1__ zfs_cmd_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;

/* Variables and functions */
 int /*<<< orphan*/  EFAULT ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spa_namespace_lock ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int
FUNC9(zfs_cmd_t *zc)
{
	spa_t *spa;
	int error;
	nvlist_t *nvp = NULL;

	if ((error = FUNC7(zc->zc_name, &spa, FTAG)) != 0) {
		/*
		 * If the pool is faulted, there may be properties we can still
		 * get (such as altroot and cachefile), so attempt to get them
		 * anyway.
		 */
		FUNC1(&spa_namespace_lock);
		if ((spa = FUNC6(zc->zc_name)) != NULL)
			error = FUNC8(spa, &nvp);
		FUNC2(&spa_namespace_lock);
	} else {
		error = FUNC8(spa, &nvp);
		FUNC5(spa, FTAG);
	}

	if (error == 0 && zc->zc_nvlist_dst != 0)
		error = FUNC4(zc, nvp);
	else
		error = FUNC0(EFAULT);

	FUNC3(nvp);
	return (error);
}