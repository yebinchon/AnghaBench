#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  vdev_mg; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_11__ {int /*<<< orphan*/  spa_name; TYPE_1__* spa_vdev_removal; } ;
typedef  TYPE_3__ spa_t ;
struct TYPE_9__ {int /*<<< orphan*/  svr_vdev_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int SCL_ALLOC ; 
 int SCL_VDEV ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_EXTRA_RESERVED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spa_vdev_remove_cancel_check ; 
 int /*<<< orphan*/  spa_vdev_remove_cancel_sync ; 
 TYPE_2__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(spa_t *spa)
{
	uint64_t vdid = spa->spa_vdev_removal->svr_vdev_id;

	int error = FUNC0(spa->spa_name, spa_vdev_remove_cancel_check,
	    spa_vdev_remove_cancel_sync, NULL, 0,
	    ZFS_SPACE_CHECK_EXTRA_RESERVED);

	if (error == 0) {
		FUNC2(spa, SCL_ALLOC | SCL_VDEV, FTAG, RW_WRITER);
		vdev_t *vd = FUNC4(spa, vdid);
		FUNC1(vd->vdev_mg);
		FUNC3(spa, SCL_ALLOC | SCL_VDEV, FTAG);
	}

	return (error);
}