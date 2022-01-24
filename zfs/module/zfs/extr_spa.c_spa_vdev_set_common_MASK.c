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
struct TYPE_6__ {int /*<<< orphan*/ * vdev_fru; int /*<<< orphan*/ * vdev_path; TYPE_1__* vdev_ops; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  scalar_t__ boolean_t ;
struct TYPE_5__ {int /*<<< orphan*/  vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  SCL_ALL ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ *) ; 

int
FUNC8(spa_t *spa, uint64_t guid, const char *value,
    boolean_t ispath)
{
	vdev_t *vd;
	boolean_t sync = B_FALSE;

	FUNC0(FUNC6(spa));

	FUNC4(spa, SCL_ALL);

	if ((vd = FUNC1(spa, guid, B_TRUE)) == NULL)
		return (FUNC5(spa, NULL, ENOENT));

	if (!vd->vdev_ops->vdev_op_leaf)
		return (FUNC5(spa, NULL, ENOTSUP));

	if (ispath) {
		if (FUNC7(value, vd->vdev_path) != 0) {
			FUNC3(vd->vdev_path);
			vd->vdev_path = FUNC2(value);
			sync = B_TRUE;
		}
	} else {
		if (vd->vdev_fru == NULL) {
			vd->vdev_fru = FUNC2(value);
			sync = B_TRUE;
		} else if (FUNC7(value, vd->vdev_fru) != 0) {
			FUNC3(vd->vdev_fru);
			vd->vdev_fru = FUNC2(value);
			sync = B_TRUE;
		}
	}

	return (FUNC5(spa, sync ? vd : NULL, 0));
}