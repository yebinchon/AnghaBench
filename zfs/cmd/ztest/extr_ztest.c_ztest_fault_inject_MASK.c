#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_11__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
struct TYPE_21__ {int zs_mirrors; int zs_splits; } ;
typedef  TYPE_2__ ztest_shared_t ;
typedef  int /*<<< orphan*/  ztest_ds_t ;
struct TYPE_22__ {scalar_t__ vdev_resilver_txg; int vdev_guid; int /*<<< orphan*/  vdev_path; void* vdev_cant_write; void* vdev_cant_read; scalar_t__ vdev_id; TYPE_4__* vdev_tsd; TYPE_11__* vdev_top; } ;
typedef  TYPE_3__ vdev_t ;
typedef  int /*<<< orphan*/  vdev_label_t ;
struct TYPE_23__ {TYPE_1__* vf_vnode; } ;
typedef  TYPE_4__ vdev_file_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
struct TYPE_25__ {unsigned long long sav_count; TYPE_3__** sav_vdevs; } ;
struct TYPE_24__ {TYPE_6__ spa_l2cache; int /*<<< orphan*/  spa_root_vdev; } ;
typedef  TYPE_5__ spa_t ;
typedef  TYPE_6__ spa_aux_vdev_t ;
typedef  void* boolean_t ;
typedef  int /*<<< orphan*/  bad ;
struct TYPE_20__ {int v_fd; } ;
struct TYPE_19__ {scalar_t__ vdev_islog; } ;
struct TYPE_18__ {int zo_raidz; int zo_verbose; int /*<<< orphan*/  zo_pool; int /*<<< orphan*/  zo_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_FALSE ; 
 void* B_TRUE ; 
 scalar_t__ EBUSY ; 
 int /*<<< orphan*/  FTAG ; 
 int INT_MAX ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  MAXPATHLEN ; 
 int /*<<< orphan*/  O_RDWR ; 
 int FUNC3 (size_t,int) ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_STATE ; 
 int /*<<< orphan*/  SEEK_END ; 
 int SPA_MAXBLOCKSHIFT ; 
 int /*<<< orphan*/  UMEM_NOFAIL ; 
 int VDEV_LABEL_END_SIZE ; 
 int VDEV_LABEL_START_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int ZFS_OFFLINE_TEMPORARY ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int,char*) ; 
 size_t FUNC7 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (int,int*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC22 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC23 (TYPE_5__*,int,int) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_5__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_11__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (char*,long long,int) ; 
 char* ztest_dev_template ; 
 scalar_t__ ztest_device_removal_active ; 
 int /*<<< orphan*/  ztest_name_lock ; 
 TYPE_10__ ztest_opts ; 
 scalar_t__ ztest_pool_scrubbed ; 
 unsigned long long FUNC27 (unsigned long long) ; 
 int FUNC28 (TYPE_5__*,void*) ; 
 TYPE_2__* ztest_shared ; 
 TYPE_5__* ztest_spa ; 
 int /*<<< orphan*/  ztest_vdev_lock ; 

void
FUNC29(ztest_ds_t *zd, uint64_t id)
{
	ztest_shared_t *zs = ztest_shared;
	spa_t *spa = ztest_spa;
	int fd;
	uint64_t offset;
	uint64_t leaves;
	uint64_t bad = 0x1990c0ffeedecadeull;
	uint64_t top, leaf;
	char *path0;
	char *pathrand;
	size_t fsize;
	int bshift = SPA_MAXBLOCKSHIFT + 2;
	int iters = 1000;
	int maxfaults;
	int mirror_save;
	vdev_t *vd0 = NULL;
	uint64_t guid0 = 0;
	boolean_t islog = B_FALSE;

	path0 = FUNC20(MAXPATHLEN, UMEM_NOFAIL);
	pathrand = FUNC20(MAXPATHLEN, UMEM_NOFAIL);

	FUNC8(&ztest_vdev_lock);

	/*
	 * Device removal is in progress, fault injection must be disabled
	 * until it completes and the pool is scrubbed.  The fault injection
	 * strategy for damaging blocks does not take in to account evacuated
	 * blocks which may have already been damaged.
	 */
	if (ztest_device_removal_active) {
		FUNC9(&ztest_vdev_lock);
		goto out;
	}

	maxfaults = FUNC2(zs);
	leaves = FUNC1(zs->zs_mirrors, 1) * ztest_opts.zo_raidz;
	mirror_save = zs->zs_mirrors;
	FUNC9(&ztest_vdev_lock);

	FUNC0(leaves >= 1);

	/*
	 * While ztest is running the number of leaves will not change.  This
	 * is critical for the fault injection logic as it determines where
	 * errors can be safely injected such that they are always repairable.
	 *
	 * When restarting ztest a different number of leaves may be requested
	 * which will shift the regions to be damaged.  This is fine as long
	 * as the pool has been scrubbed prior to using the new mapping.
	 * Failure to do can result in non-repairable damage being injected.
	 */
	if (ztest_pool_scrubbed == B_FALSE)
		goto out;

	/*
	 * Grab the name lock as reader. There are some operations
	 * which don't like to have their vdevs changed while
	 * they are in progress (i.e. spa_change_guid). Those
	 * operations will have grabbed the name lock as writer.
	 */
	(void) FUNC12(&ztest_name_lock);

	/*
	 * We need SCL_STATE here because we're going to look at vd0->vdev_tsd.
	 */
	FUNC17(spa, SCL_STATE, FTAG, RW_READER);

	if (FUNC27(2) == 0) {
		/*
		 * Inject errors on a normal data device or slog device.
		 */
		top = FUNC28(spa, B_TRUE);
		leaf = FUNC27(leaves) + zs->zs_splits;

		/*
		 * Generate paths to the first leaf in this top-level vdev,
		 * and to the random leaf we selected.  We'll induce transient
		 * write failures and random online/offline activity on leaf 0,
		 * and we'll write random garbage to the randomly chosen leaf.
		 */
		(void) FUNC16(path0, MAXPATHLEN, ztest_dev_template,
		    ztest_opts.zo_dir, ztest_opts.zo_pool,
		    top * leaves + zs->zs_splits);
		(void) FUNC16(pathrand, MAXPATHLEN, ztest_dev_template,
		    ztest_opts.zo_dir, ztest_opts.zo_pool,
		    top * leaves + leaf);

		vd0 = FUNC22(spa->spa_root_vdev, path0);
		if (vd0 != NULL && vd0->vdev_top->vdev_islog)
			islog = B_TRUE;

		/*
		 * If the top-level vdev needs to be resilvered
		 * then we only allow faults on the device that is
		 * resilvering.
		 */
		if (vd0 != NULL && maxfaults != 1 &&
		    (!FUNC25(vd0->vdev_top, NULL, NULL) ||
		    vd0->vdev_resilver_txg != 0)) {
			/*
			 * Make vd0 explicitly claim to be unreadable,
			 * or unwriteable, or reach behind its back
			 * and close the underlying fd.  We can do this if
			 * maxfaults == 0 because we'll fail and reexecute,
			 * and we can do it if maxfaults >= 2 because we'll
			 * have enough redundancy.  If maxfaults == 1, the
			 * combination of this with injection of random data
			 * corruption below exceeds the pool's fault tolerance.
			 */
			vdev_file_t *vf = vd0->vdev_tsd;

			FUNC26("injecting fault to vdev %llu; maxfaults=%d",
			    (long long)vd0->vdev_id, (int)maxfaults);

			if (vf != NULL && FUNC27(3) == 0) {
				(void) FUNC5(vf->vf_vnode->v_fd);
				vf->vf_vnode->v_fd = -1;
			} else if (FUNC27(2) == 0) {
				vd0->vdev_cant_read = B_TRUE;
			} else {
				vd0->vdev_cant_write = B_TRUE;
			}
			guid0 = vd0->vdev_guid;
		}
	} else {
		/*
		 * Inject errors on an l2cache device.
		 */
		spa_aux_vdev_t *sav = &spa->spa_l2cache;

		if (sav->sav_count == 0) {
			FUNC18(spa, SCL_STATE, FTAG);
			(void) FUNC13(&ztest_name_lock);
			goto out;
		}
		vd0 = sav->sav_vdevs[FUNC27(sav->sav_count)];
		guid0 = vd0->vdev_guid;
		(void) FUNC19(path0, vd0->vdev_path);
		(void) FUNC19(pathrand, vd0->vdev_path);

		leaf = 0;
		leaves = 1;
		maxfaults = INT_MAX;	/* no limit on cache devices */
	}

	FUNC18(spa, SCL_STATE, FTAG);
	(void) FUNC13(&ztest_name_lock);

	/*
	 * If we can tolerate two or more faults, or we're dealing
	 * with a slog, randomly online/offline vd0.
	 */
	if ((maxfaults >= 2 || islog) && guid0 != 0) {
		if (FUNC27(10) < 6) {
			int flags = (FUNC27(2) == 0 ?
			    ZFS_OFFLINE_TEMPORARY : 0);

			/*
			 * We have to grab the zs_name_lock as writer to
			 * prevent a race between offlining a slog and
			 * destroying a dataset. Offlining the slog will
			 * grab a reference on the dataset which may cause
			 * dsl_destroy_head() to fail with EBUSY thus
			 * leaving the dataset in an inconsistent state.
			 */
			if (islog)
				(void) FUNC14(&ztest_name_lock);

			FUNC4(FUNC23(spa, guid0, flags) != EBUSY);

			if (islog)
				(void) FUNC13(&ztest_name_lock);
		} else {
			/*
			 * Ideally we would like to be able to randomly
			 * call vdev_[on|off]line without holding locks
			 * to force unpredictable failures but the side
			 * effects of vdev_[on|off]line prevent us from
			 * doing so. We grab the ztest_vdev_lock here to
			 * prevent a race between injection testing and
			 * aux_vdev removal.
			 */
			FUNC8(&ztest_vdev_lock);
			(void) FUNC24(spa, guid0, 0, NULL);
			FUNC9(&ztest_vdev_lock);
		}
	}

	if (maxfaults == 0)
		goto out;

	/*
	 * We have at least single-fault tolerance, so inject data corruption.
	 */
	fd = FUNC10(pathrand, O_RDWR);

	if (fd == -1) /* we hit a gap in the device namespace */
		goto out;

	fsize = FUNC7(fd, 0, SEEK_END);

	while (--iters != 0) {
		/*
		 * The offset must be chosen carefully to ensure that
		 * we do not inject a given logical block with errors
		 * on two different leaf devices, because ZFS can not
		 * tolerate that (if maxfaults==1).
		 *
		 * We divide each leaf into chunks of size
		 * (# leaves * SPA_MAXBLOCKSIZE * 4).  Within each chunk
		 * there is a series of ranges to which we can inject errors.
		 * Each range can accept errors on only a single leaf vdev.
		 * The error injection ranges are separated by ranges
		 * which we will not inject errors on any device (DMZs).
		 * Each DMZ must be large enough such that a single block
		 * can not straddle it, so that a single block can not be
		 * a target in two different injection ranges (on different
		 * leaf vdevs).
		 *
		 * For example, with 3 leaves, each chunk looks like:
		 *    0 to  32M: injection range for leaf 0
		 *  32M to  64M: DMZ - no injection allowed
		 *  64M to  96M: injection range for leaf 1
		 *  96M to 128M: DMZ - no injection allowed
		 * 128M to 160M: injection range for leaf 2
		 * 160M to 192M: DMZ - no injection allowed
		 */
		offset = FUNC27(fsize / (leaves << bshift)) *
		    (leaves << bshift) + (leaf << bshift) +
		    (FUNC27(1ULL << (bshift - 1)) & -8ULL);

		/*
		 * Only allow damage to the labels at one end of the vdev.
		 *
		 * If all labels are damaged, the device will be totally
		 * inaccessible, which will result in loss of data,
		 * because we also damage (parts of) the other side of
		 * the mirror/raidz.
		 *
		 * Additionally, we will always have both an even and an
		 * odd label, so that we can handle crashes in the
		 * middle of vdev_config_sync().
		 */
		if ((leaf & 1) == 0 && offset < VDEV_LABEL_START_SIZE)
			continue;

		/*
		 * The two end labels are stored at the "end" of the disk, but
		 * the end of the disk (vdev_psize) is aligned to
		 * sizeof (vdev_label_t).
		 */
		uint64_t psize = FUNC3(fsize, sizeof (vdev_label_t));
		if ((leaf & 1) == 1 &&
		    offset + sizeof (bad) > psize - VDEV_LABEL_END_SIZE)
			continue;

		FUNC8(&ztest_vdev_lock);
		if (mirror_save != zs->zs_mirrors) {
			FUNC9(&ztest_vdev_lock);
			(void) FUNC5(fd);
			goto out;
		}

		if (FUNC15(fd, &bad, sizeof (bad), offset) != sizeof (bad))
			FUNC6(1, "can't inject bad word at 0x%llx in %s",
			    offset, pathrand);

		FUNC9(&ztest_vdev_lock);

		if (ztest_opts.zo_verbose >= 7)
			(void) FUNC11("injected bad word into %s,"
			    " offset 0x%llx\n", pathrand, (u_longlong_t)offset);
	}

	(void) FUNC5(fd);
out:
	FUNC21(path0, MAXPATHLEN);
	FUNC21(pathrand, MAXPATHLEN);
}