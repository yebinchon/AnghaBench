#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {size_t vdev_asize; int /*<<< orphan*/ * vdev_ops; } ;
typedef  TYPE_2__ vdev_t ;
typedef  size_t uint64_t ;
struct TYPE_25__ {TYPE_1__* spa_root_vdev; int /*<<< orphan*/  spa_trust_config; } ;
typedef  TYPE_3__ spa_t ;
typedef  int /*<<< orphan*/  longlong_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_26__ {int /*<<< orphan*/ * blk_dva; } ;
typedef  TYPE_4__ blkptr_t ;
struct TYPE_23__ {size_t vdev_children; TYPE_2__** vdev_child; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_4__ const*) ; 
 scalar_t__ FUNC2 (TYPE_4__ const*) ; 
 scalar_t__ FUNC3 (TYPE_4__ const*) ; 
 scalar_t__ FUNC4 (TYPE_4__ const*) ; 
 int FUNC5 (TYPE_4__ const*) ; 
 scalar_t__ FUNC6 (TYPE_4__ const*) ; 
 scalar_t__ FUNC7 (TYPE_4__ const*) ; 
 scalar_t__ FUNC8 (TYPE_4__ const*) ; 
 scalar_t__ FUNC9 (TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 size_t FUNC11 (int /*<<< orphan*/ *) ; 
 size_t FUNC12 (int /*<<< orphan*/ *) ; 
 size_t FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ NUM_BP_EMBEDDED_TYPES ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  RW_WRITER ; 
 int /*<<< orphan*/  SCL_VDEV ; 
 int /*<<< orphan*/  SPA_GANGBLOCKSIZE ; 
 scalar_t__ SPA_MAXBLOCKSIZE ; 
 scalar_t__ ZIO_CHECKSUM_FUNCTIONS ; 
 scalar_t__ ZIO_CHECKSUM_ON ; 
 scalar_t__ ZIO_COMPRESS_FUNCTIONS ; 
 scalar_t__ ZIO_COMPRESS_ON ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_4__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ,TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vdev_hole_ops ; 
 int /*<<< orphan*/  vdev_missing_ops ; 
 size_t FUNC17 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,TYPE_4__ const*,int,...) ; 

__attribute__((used)) static void
FUNC19(spa_t *spa, const blkptr_t *bp, boolean_t config_held)
{
	if (!FUNC10(FUNC7(bp))) {
		FUNC18("blkptr at %p has invalid TYPE %llu",
		    bp, (longlong_t)FUNC7(bp));
	}
	if (FUNC2(bp) >= ZIO_CHECKSUM_FUNCTIONS ||
	    FUNC2(bp) <= ZIO_CHECKSUM_ON) {
		FUNC18("blkptr at %p has invalid CHECKSUM %llu",
		    bp, (longlong_t)FUNC2(bp));
	}
	if (FUNC3(bp) >= ZIO_COMPRESS_FUNCTIONS ||
	    FUNC3(bp) <= ZIO_COMPRESS_ON) {
		FUNC18("blkptr at %p has invalid COMPRESS %llu",
		    bp, (longlong_t)FUNC3(bp));
	}
	if (FUNC4(bp) > SPA_MAXBLOCKSIZE) {
		FUNC18("blkptr at %p has invalid LSIZE %llu",
		    bp, (longlong_t)FUNC4(bp));
	}
	if (FUNC6(bp) > SPA_MAXBLOCKSIZE) {
		FUNC18("blkptr at %p has invalid PSIZE %llu",
		    bp, (longlong_t)FUNC6(bp));
	}

	if (FUNC8(bp)) {
		if (FUNC1(bp) >= NUM_BP_EMBEDDED_TYPES) {
			FUNC18("blkptr at %p has invalid ETYPE %llu",
			    bp, (longlong_t)FUNC1(bp));
		}
	}

	/*
	 * Do not verify individual DVAs if the config is not trusted. This
	 * will be done once the zio is executed in vdev_mirror_map_alloc.
	 */
	if (!spa->spa_trust_config)
		return;

	if (!config_held)
		FUNC14(spa, SCL_VDEV, bp, RW_READER);
	else
		FUNC0(FUNC16(spa, SCL_VDEV, RW_WRITER));
	/*
	 * Pool-specific checks.
	 *
	 * Note: it would be nice to verify that the blk_birth and
	 * BP_PHYSICAL_BIRTH() are not too large.  However, spa_freeze()
	 * allows the birth time of log blocks (and dmu_sync()-ed blocks
	 * that are in the log) to be arbitrarily large.
	 */
	for (int i = 0; i < FUNC5(bp); i++) {
		uint64_t vdevid = FUNC13(&bp->blk_dva[i]);

		if (vdevid >= spa->spa_root_vdev->vdev_children) {
			FUNC18("blkptr at %p DVA %u has invalid "
			    "VDEV %llu",
			    bp, i, (longlong_t)vdevid);
			continue;
		}
		vdev_t *vd = spa->spa_root_vdev->vdev_child[vdevid];
		if (vd == NULL) {
			FUNC18("blkptr at %p DVA %u has invalid "
			    "VDEV %llu",
			    bp, i, (longlong_t)vdevid);
			continue;
		}
		if (vd->vdev_ops == &vdev_hole_ops) {
			FUNC18("blkptr at %p DVA %u has hole "
			    "VDEV %llu",
			    bp, i, (longlong_t)vdevid);
			continue;
		}
		if (vd->vdev_ops == &vdev_missing_ops) {
			/*
			 * "missing" vdevs are valid during import, but we
			 * don't have their detailed info (e.g. asize), so
			 * we can't perform any more checks on them.
			 */
			continue;
		}
		uint64_t offset = FUNC12(&bp->blk_dva[i]);
		uint64_t asize = FUNC11(&bp->blk_dva[i]);
		if (FUNC9(bp))
			asize = FUNC17(vd, SPA_GANGBLOCKSIZE);
		if (offset + asize > vd->vdev_asize) {
			FUNC18("blkptr at %p DVA %u has invalid "
			    "OFFSET %llu",
			    bp, i, (longlong_t)offset);
		}
	}
	if (!config_held)
		FUNC15(spa, SCL_VDEV, bp);
}