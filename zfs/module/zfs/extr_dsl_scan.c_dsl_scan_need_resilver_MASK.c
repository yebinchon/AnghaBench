#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * vdev_ops; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  dva_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DTL_PARTIAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  vdev_indirect_ops ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static boolean_t
FUNC7(spa_t *spa, const dva_t *dva, size_t psize,
    uint64_t phys_birth)
{
	vdev_t *vd;

	vd = FUNC6(spa, FUNC2(dva));

	if (vd->vdev_ops == &vdev_indirect_ops) {
		/*
		 * The indirect vdev can point to multiple
		 * vdevs.  For simplicity, always create
		 * the resilver zio_t. zio_vdev_io_start()
		 * will bypass the child resilver i/o's if
		 * they are on vdevs that don't have DTL's.
		 */
		return (B_TRUE);
	}

	if (FUNC0(dva)) {
		/*
		 * Gang members may be spread across multiple
		 * vdevs, so the best estimate we have is the
		 * scrub range, which has already been checked.
		 * XXX -- it would be better to change our
		 * allocation policy to ensure that all
		 * gang members reside on the same vdev.
		 */
		return (B_TRUE);
	}

	/*
	 * Check if the txg falls within the range which must be
	 * resilvered.  DVAs outside this range can always be skipped.
	 */
	if (!FUNC4(vd, DTL_PARTIAL, phys_birth, 1))
		return (B_FALSE);

	/*
	 * Check if the top-level vdev must resilver this offset.
	 * When the offset does not intersect with a dirty leaf DTL
	 * then it may be possible to skip the resilver IO.  The psize
	 * is provided instead of asize to simplify the check for RAIDZ.
	 */
	if (!FUNC5(vd, FUNC1(dva), psize))
		return (B_FALSE);

	/*
	 * Check that this top-level vdev has a device under it which
	 * is resilvering and is not deferred.
	 */
	if (!FUNC3(vd))
		return (B_FALSE);

	return (B_TRUE);
}