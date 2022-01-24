#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  vdev_pending_fastwrite; } ;
typedef  TYPE_1__ vdev_t ;
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  dva_t ;
struct TYPE_10__ {int /*<<< orphan*/ * blk_dva; } ;
typedef  TYPE_2__ blkptr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__ const*) ; 
 scalar_t__ FUNC2 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_VDEV ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC10(spa_t *spa, const blkptr_t *bp)
{
	const dva_t *dva = bp->blk_dva;
	int ndvas = FUNC1(bp);
	uint64_t psize = FUNC2(bp);
	int d;
	vdev_t *vd;

	FUNC0(!FUNC4(bp));
	FUNC0(!FUNC3(bp));
	FUNC0(psize > 0);

	FUNC7(spa, SCL_VDEV, FTAG, RW_READER);

	for (d = 0; d < ndvas; d++) {
		if ((vd = FUNC9(spa, FUNC5(&dva[d]))) == NULL)
			continue;
		FUNC6(&vd->vdev_pending_fastwrite, psize);
	}

	FUNC8(spa, SCL_VDEV, FTAG);
}