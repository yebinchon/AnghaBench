#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t zio_priority_t ;
struct TYPE_8__ {TYPE_1__* vq_class; int /*<<< orphan*/  vq_active_tree; TYPE_2__* vq_vdev; } ;
typedef  TYPE_3__ vdev_queue_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_7__ {int /*<<< orphan*/ * vdev_spa; } ;
struct TYPE_6__ {scalar_t__ vqc_active; } ;

/* Variables and functions */
 size_t ZIO_PRIORITY_NUM_QUEUEABLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_3__*,size_t) ; 
 scalar_t__ zfs_vdev_max_active ; 

__attribute__((used)) static zio_priority_t
FUNC4(vdev_queue_t *vq)
{
	spa_t *spa = vq->vq_vdev->vdev_spa;
	zio_priority_t p;

	if (FUNC0(&vq->vq_active_tree) >= zfs_vdev_max_active)
		return (ZIO_PRIORITY_NUM_QUEUEABLE);

	/* find a queue that has not reached its minimum # outstanding i/os */
	for (p = 0; p < ZIO_PRIORITY_NUM_QUEUEABLE; p++) {
		if (FUNC0(FUNC3(vq, p)) > 0 &&
		    vq->vq_class[p].vqc_active <
		    FUNC2(p))
			return (p);
	}

	/*
	 * If we haven't found a queue, look for one that hasn't reached its
	 * maximum # outstanding i/os.
	 */
	for (p = 0; p < ZIO_PRIORITY_NUM_QUEUEABLE; p++) {
		if (FUNC0(FUNC3(vq, p)) > 0 &&
		    vq->vq_class[p].vqc_active <
		    FUNC1(spa, p))
			return (p);
	}

	/* No eligible queued i/os */
	return (ZIO_PRIORITY_NUM_QUEUEABLE);
}