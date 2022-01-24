#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
struct TYPE_22__ {int vdev_guid; int vdev_mmp_pending; scalar_t__ vdev_mmp_kstat_id; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_23__ {scalar_t__ ub_timestamp; int ub_mmp_config; int /*<<< orphan*/  ub_mmp_delay; int /*<<< orphan*/  ub_txg; int /*<<< orphan*/  ub_mmp_magic; } ;
typedef  TYPE_2__ uberblock_t ;
struct TYPE_25__ {int mmp_skip_error; int mmp_seq; int /*<<< orphan*/  mmp_io_lock; scalar_t__ mmp_kstat_id; int /*<<< orphan*/ * mmp_zio_root; int /*<<< orphan*/  mmp_delay; TYPE_2__ mmp_ub; TYPE_1__* mmp_last_leaf; } ;
struct TYPE_24__ {TYPE_4__ spa_mmp; } ;
typedef  TYPE_3__ spa_t ;
typedef  TYPE_4__ mmp_thread_t ;
typedef  int hrtime_t ;
typedef  int /*<<< orphan*/  abd_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ MMP_BLOCKS_PER_LABEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MMP_MAGIC ; 
 int /*<<< orphan*/  MMP_MIN_INTERVAL ; 
 int FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_STATE ; 
 scalar_t__ VDEV_LABELS ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int ZIO_FLAG_CANFAIL ; 
 int ZIO_FLAG_CONFIG_WRITER ; 
 int ZIO_FLAG_DONT_PROPAGATE ; 
 int ZIO_FLAG_GODFATHER ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 () ; 
 int FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC15 (TYPE_3__*) ; 
 int /*<<< orphan*/  mmp_tag ; 
 int /*<<< orphan*/  mmp_write_done ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_1__*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC25 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  zfs_multihost_fail_intervals ; 
 int /*<<< orphan*/  zfs_multihost_interval ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC28 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC29(spa_t *spa)
{
	int flags = ZIO_FLAG_CONFIG_WRITER | ZIO_FLAG_CANFAIL;
	mmp_thread_t *mmp = &spa->spa_mmp;
	uberblock_t *ub;
	vdev_t *vd = NULL;
	int label, error;
	uint64_t offset;

	hrtime_t lock_acquire_time = FUNC13();
	FUNC18(spa, SCL_STATE, mmp_tag, RW_READER);
	lock_acquire_time = FUNC13() - lock_acquire_time;
	if (lock_acquire_time > (FUNC5(MMP_MIN_INTERVAL) / 10))
		FUNC25("MMP SCL_STATE acquisition pool '%s' took %llu ns "
		    "gethrtime %llu", FUNC23(spa), lock_acquire_time,
		    FUNC13());

	FUNC16(&mmp->mmp_io_lock);

	error = FUNC15(spa);

	/*
	 * spa_mmp_history has two types of entries:
	 * Issued MMP write: records time issued, error status, etc.
	 * Skipped MMP write: an MMP write could not be issued because no
	 * suitable leaf vdev was available.  See comment above struct
	 * spa_mmp_history for details.
	 */

	if (error) {
		FUNC14(spa, B_FALSE);
		if (mmp->mmp_skip_error == error) {
			FUNC22(spa, mmp->mmp_kstat_id - 1);
		} else {
			mmp->mmp_skip_error = error;
			FUNC21(spa, mmp->mmp_ub.ub_txg,
			    FUNC12(), mmp->mmp_delay, NULL, 0,
			    mmp->mmp_kstat_id++, error);
			FUNC25("MMP error choosing leaf pool '%s' "
			    "gethrtime %llu fail_mask %#x", FUNC23(spa),
			    FUNC13(), error);
		}
		FUNC17(&mmp->mmp_io_lock);
		FUNC19(spa, SCL_STATE, mmp_tag);
		return;
	}

	vd = spa->spa_mmp.mmp_last_leaf;
	if (mmp->mmp_skip_error != 0) {
		mmp->mmp_skip_error = 0;
		FUNC25("MMP write after skipping due to unavailable "
		    "leaves, pool '%s' gethrtime %llu leaf %#llu",
		    FUNC23(spa), FUNC13(), vd->vdev_guid);
	}

	if (mmp->mmp_zio_root == NULL)
		mmp->mmp_zio_root = FUNC28(spa, NULL, NULL,
		    flags | ZIO_FLAG_GODFATHER);

	if (mmp->mmp_ub.ub_timestamp != FUNC12()) {
		/*
		 * Want to reset mmp_seq when timestamp advances because after
		 * an mmp_seq wrap new values will not be chosen by
		 * uberblock_compare() as the "best".
		 */
		mmp->mmp_ub.ub_timestamp = FUNC12();
		mmp->mmp_seq = 1;
	}

	ub = &mmp->mmp_ub;
	ub->ub_mmp_magic = MMP_MAGIC;
	ub->ub_mmp_delay = mmp->mmp_delay;
	ub->ub_mmp_config = FUNC4(mmp->mmp_seq) |
	    FUNC3(FUNC2(zfs_multihost_interval)) |
	    FUNC1(FUNC0(
	    zfs_multihost_fail_intervals));
	vd->vdev_mmp_pending = FUNC13();
	vd->vdev_mmp_kstat_id = mmp->mmp_kstat_id;

	zio_t *zio  = FUNC27(mmp->mmp_zio_root, spa, NULL, NULL, NULL, flags);
	abd_t *ub_abd = FUNC9(FUNC8(vd), B_TRUE);
	FUNC11(ub_abd, FUNC8(vd));
	FUNC10(ub_abd, ub, sizeof (uberblock_t));

	mmp->mmp_seq++;
	mmp->mmp_kstat_id++;
	FUNC17(&mmp->mmp_io_lock);

	offset = FUNC7(vd, FUNC6(vd) -
	    MMP_BLOCKS_PER_LABEL + FUNC20(MMP_BLOCKS_PER_LABEL));

	label = FUNC20(VDEV_LABELS);
	FUNC24(zio, vd, label, ub_abd, offset,
	    FUNC8(vd), mmp_write_done, mmp,
	    flags | ZIO_FLAG_DONT_PROPAGATE);

	(void) FUNC21(spa, ub->ub_txg, ub->ub_timestamp,
	    ub->ub_mmp_delay, vd, label, vd->vdev_mmp_kstat_id, 0);

	FUNC26(zio);
}