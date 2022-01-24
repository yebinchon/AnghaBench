#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
struct TYPE_14__ {size_t vdev_children; scalar_t__ vdev_state; scalar_t__ vdev_copy_uberblocks; int /*<<< orphan*/  vdev_spa; TYPE_1__* vdev_ops; struct TYPE_14__** vdev_child; } ;
typedef  TYPE_2__ vdev_t ;
typedef  size_t uint64_t ;
struct TYPE_15__ {int ub_txg; } ;
typedef  TYPE_3__ uberblock_t ;
typedef  int /*<<< orphan*/  abd_t ;
struct TYPE_13__ {int /*<<< orphan*/  vdev_op_leaf; } ;

/* Variables and functions */
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int MMP_BLOCKS_PER_LABEL ; 
 int VDEV_LABELS ; 
 scalar_t__ VDEV_STATE_HEALTHY ; 
 int FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int ZIO_FLAG_DONT_PROPAGATE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*,int) ; 
 int /*<<< orphan*/  vdev_uberblock_sync_done ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC11(zio_t *zio, uint64_t *good_writes,
    uberblock_t *ub, vdev_t *vd, int flags)
{
	for (uint64_t c = 0; c < vd->vdev_children; c++) {
		FUNC11(zio, good_writes,
		    ub, vd->vdev_child[c], flags);
	}

	if (!vd->vdev_ops->vdev_op_leaf)
		return;

	if (!FUNC10(vd))
		return;

	/* If the vdev was expanded, need to copy uberblock rings. */
	if (vd->vdev_state == VDEV_STATE_HEALTHY &&
	    vd->vdev_copy_uberblocks == B_TRUE) {
		FUNC8(vd);
		vd->vdev_copy_uberblocks = B_FALSE;
	}

	int m = FUNC7(vd->vdev_spa) ? MMP_BLOCKS_PER_LABEL : 0;
	int n = ub->ub_txg % (FUNC0(vd) - m);

	/* Copy the uberblock_t into the ABD */
	abd_t *ub_abd = FUNC3(FUNC2(vd), B_TRUE);
	FUNC6(ub_abd, FUNC2(vd));
	FUNC4(ub_abd, ub, sizeof (uberblock_t));

	for (int l = 0; l < VDEV_LABELS; l++)
		FUNC9(zio, vd, l, ub_abd,
		    FUNC1(vd, n), FUNC2(vd),
		    vdev_uberblock_sync_done, good_writes,
		    flags | ZIO_FLAG_DONT_PROPAGATE);

	FUNC5(ub_abd);
}