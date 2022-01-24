#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;
typedef  struct TYPE_19__   TYPE_18__ ;

/* Type definitions */
struct TYPE_21__ {TYPE_18__* vq_class; } ;
struct TYPE_24__ {int /*<<< orphan*/ * vsx_pend_queue; int /*<<< orphan*/ * vsx_active_queue; } ;
struct TYPE_23__ {TYPE_5__* vs_bytes; TYPE_5__* vs_ops; } ;
struct TYPE_22__ {int vdev_children; TYPE_2__ vdev_queue; TYPE_5__ vdev_stat_ex; TYPE_4__ vdev_stat; struct TYPE_22__** vdev_child; TYPE_1__* vdev_ops; } ;
typedef  TYPE_3__ vdev_t ;
typedef  TYPE_4__ vdev_stat_t ;
typedef  TYPE_5__ vdev_stat_ex_t ;
struct TYPE_20__ {int /*<<< orphan*/  vdev_op_leaf; } ;
struct TYPE_19__ {int /*<<< orphan*/  vqc_queued_tree; int /*<<< orphan*/  vqc_active; } ;

/* Variables and functions */
 int FUNC0 (TYPE_18__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_5__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_4__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,TYPE_5__*,TYPE_5__*) ; 

__attribute__((used)) static void
FUNC6(vdev_t *vd, vdev_stat_t *vs, vdev_stat_ex_t *vsx)
{
	int t;
	/*
	 * If we're getting stats on the root vdev, aggregate the I/O counts
	 * over all top-level vdevs (i.e. the direct children of the root).
	 */
	if (!vd->vdev_ops->vdev_op_leaf) {
		if (vs) {
			FUNC3(vs->vs_ops, 0, sizeof (vs->vs_ops));
			FUNC3(vs->vs_bytes, 0, sizeof (vs->vs_bytes));
		}
		if (vsx)
			FUNC3(vsx, 0, sizeof (*vsx));

		for (int c = 0; c < vd->vdev_children; c++) {
			vdev_t *cvd = vd->vdev_child[c];
			vdev_stat_t *cvs = &cvd->vdev_stat;
			vdev_stat_ex_t *cvsx = &cvd->vdev_stat_ex;

			FUNC6(cvd, cvs, cvsx);
			if (vs)
				FUNC4(cvd, vs, cvs);
			if (vsx)
				FUNC5(cvd, vsx, cvsx);

		}
	} else {
		/*
		 * We're a leaf.  Just copy our ZIO active queue stats in.  The
		 * other leaf stats are updated in vdev_stat_update().
		 */
		if (!vsx)
			return;

		FUNC2(vsx, &vd->vdev_stat_ex, sizeof (vd->vdev_stat_ex));

		for (t = 0; t < FUNC0(vd->vdev_queue.vq_class); t++) {
			vsx->vsx_active_queue[t] =
			    vd->vdev_queue.vq_class[t].vqc_active;
			vsx->vsx_pend_queue[t] = FUNC1(
			    &vd->vdev_queue.vq_class[t].vqc_queued_tree);
		}
	}
}