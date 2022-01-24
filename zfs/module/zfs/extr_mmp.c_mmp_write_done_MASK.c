#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ io_error; int /*<<< orphan*/  io_abd; TYPE_3__* io_private; TYPE_2__* io_vd; int /*<<< orphan*/ * io_spa; } ;
typedef  TYPE_1__ zio_t ;
struct TYPE_6__ {scalar_t__ vdev_mmp_kstat_id; scalar_t__ vdev_mmp_pending; } ;
typedef  TYPE_2__ vdev_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_7__ {int /*<<< orphan*/  mmp_io_lock; } ;
typedef  TYPE_3__ mmp_thread_t ;
typedef  scalar_t__ hrtime_t ;

/* Variables and functions */
 int /*<<< orphan*/  SCL_STATE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mmp_tag ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
FUNC7(zio_t *zio)
{
	spa_t *spa = zio->io_spa;
	vdev_t *vd = zio->io_vd;
	mmp_thread_t *mts = zio->io_private;

	FUNC3(&mts->mmp_io_lock);
	uint64_t mmp_kstat_id = vd->vdev_mmp_kstat_id;
	hrtime_t mmp_write_duration = FUNC1() - vd->vdev_mmp_pending;

	FUNC2(spa, (zio->io_error == 0));

	vd->vdev_mmp_pending = 0;
	vd->vdev_mmp_kstat_id = 0;

	FUNC4(&mts->mmp_io_lock);
	FUNC5(spa, SCL_STATE, mmp_tag);

	FUNC6(spa, mmp_kstat_id, zio->io_error,
	    mmp_write_duration);

	FUNC0(zio->io_abd);
}