#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ vdev_trim_rate; scalar_t__* vdev_trim_inflight; scalar_t__* vdev_trim_offset; size_t vdev_guid; int /*<<< orphan*/  vdev_trim_lock; TYPE_3__* vdev_spa; int /*<<< orphan*/  vdev_trim_io_lock; int /*<<< orphan*/  vdev_top; int /*<<< orphan*/  vdev_trim_io_cv; } ;
typedef  TYPE_1__ vdev_t ;
typedef  size_t uint64_t ;
struct TYPE_16__ {size_t trim_type; size_t trim_bytes_done; int /*<<< orphan*/  trim_flags; TYPE_1__* trim_vdev; } ;
typedef  TYPE_2__ trim_args_t ;
struct TYPE_17__ {int /*<<< orphan*/ * spa_txg_zio; } ;
typedef  TYPE_3__ spa_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
struct TYPE_18__ {int /*<<< orphan*/  dp_mos_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINTR ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_STATE_ALL ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 size_t TRIM_TYPE_AUTO ; 
 size_t TRIM_TYPE_MANUAL ; 
 size_t TXG_MASK ; 
 int /*<<< orphan*/  TXG_WAIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_RESERVED ; 
 int /*<<< orphan*/  ZIO_FLAG_CANFAIL ; 
 int /*<<< orphan*/  ZIO_PRIORITY_TRIM ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 size_t FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_8__*,int /*<<< orphan*/ ,size_t*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_8__* FUNC16 (TYPE_3__*) ; 
 int /*<<< orphan*/  vdev_autotrim_cb ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  vdev_trim_cb ; 
 scalar_t__ FUNC19 (TYPE_1__*) ; 
 int /*<<< orphan*/  vdev_trim_zap_update_sync ; 
 scalar_t__ zfs_trim_queue_limit ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,TYPE_1__*,size_t,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC22(trim_args_t *ta, uint64_t start, uint64_t size)
{
	vdev_t *vd = ta->trim_vdev;
	spa_t *spa = vd->vdev_spa;

	FUNC12(&vd->vdev_trim_io_lock);

	/*
	 * Limit manual TRIM I/Os to the requested rate.  This does not
	 * apply to automatic TRIM since no per vdev rate can be specified.
	 */
	if (ta->trim_type == TRIM_TYPE_MANUAL) {
		while (vd->vdev_trim_rate != 0 && !FUNC19(vd) &&
		    FUNC18(ta) > vd->vdev_trim_rate) {
			FUNC3(&vd->vdev_trim_io_cv,
			    &vd->vdev_trim_io_lock, FUNC5() +
			    FUNC0(10));
		}
	}
	ta->trim_bytes_done += size;

	/* Limit in flight trimming I/Os */
	while (vd->vdev_trim_inflight[0] + vd->vdev_trim_inflight[1] >=
	    zfs_trim_queue_limit) {
		FUNC4(&vd->vdev_trim_io_cv, &vd->vdev_trim_io_lock);
	}
	vd->vdev_trim_inflight[ta->trim_type]++;
	FUNC13(&vd->vdev_trim_io_lock);

	dmu_tx_t *tx = FUNC8(FUNC16(spa)->dp_mos_dir);
	FUNC2(FUNC6(tx, TXG_WAIT));
	uint64_t txg = FUNC9(tx);

	FUNC14(spa, SCL_STATE_ALL, vd, RW_READER);
	FUNC12(&vd->vdev_trim_lock);

	if (ta->trim_type == TRIM_TYPE_MANUAL &&
	    vd->vdev_trim_offset[txg & TXG_MASK] == 0) {
		uint64_t *guid = FUNC11(sizeof (uint64_t), KM_SLEEP);
		*guid = vd->vdev_guid;

		/* This is the first write of this txg. */
		FUNC10(FUNC16(spa),
		    vdev_trim_zap_update_sync, guid, 2,
		    ZFS_SPACE_CHECK_RESERVED, tx);
	}

	/*
	 * We know the vdev_t will still be around since all consumers of
	 * vdev_free must stop the trimming first.
	 */
	if ((ta->trim_type == TRIM_TYPE_MANUAL &&
	    FUNC19(vd)) ||
	    (ta->trim_type == TRIM_TYPE_AUTO &&
	    FUNC17(vd->vdev_top))) {
		FUNC12(&vd->vdev_trim_io_lock);
		vd->vdev_trim_inflight[ta->trim_type]--;
		FUNC13(&vd->vdev_trim_io_lock);
		FUNC15(vd->vdev_spa, SCL_STATE_ALL, vd);
		FUNC13(&vd->vdev_trim_lock);
		FUNC7(tx);
		return (FUNC1(EINTR));
	}
	FUNC13(&vd->vdev_trim_lock);

	if (ta->trim_type == TRIM_TYPE_MANUAL)
		vd->vdev_trim_offset[txg & TXG_MASK] = start + size;

	FUNC20(FUNC21(spa->spa_txg_zio[txg & TXG_MASK], vd,
	    start, size, ta->trim_type == TRIM_TYPE_MANUAL ?
	    vdev_trim_cb : vdev_autotrim_cb, NULL,
	    ZIO_PRIORITY_TRIM, ZIO_FLAG_CANFAIL, ta->trim_flags));
	/* vdev_trim_cb and vdev_autotrim_cb release SCL_STATE_ALL */

	FUNC7(tx);

	return (0);
}