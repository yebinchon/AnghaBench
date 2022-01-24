#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {void* io_timestamp; scalar_t__ io_done; void* io_delta; TYPE_1__* io_vd; } ;
typedef  TYPE_2__ zio_t ;
struct TYPE_14__ {void* vq_io_complete_ts; void* vq_io_delta_ts; int /*<<< orphan*/  vq_lock; } ;
typedef  TYPE_3__ vdev_queue_t ;
struct TYPE_12__ {TYPE_3__ vdev_queue; } ;

/* Variables and functions */
 void* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ vdev_queue_agg_io_done ; 
 TYPE_2__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

void
FUNC8(zio_t *zio)
{
	vdev_queue_t *vq = &zio->io_vd->vdev_queue;
	zio_t *nio;

	FUNC1(&vq->vq_lock);

	FUNC4(vq, zio);

	zio->io_delta = FUNC0() - zio->io_timestamp;
	vq->vq_io_complete_ts = FUNC0();
	vq->vq_io_delta_ts = vq->vq_io_complete_ts - zio->io_timestamp;

	while ((nio = FUNC3(vq)) != NULL) {
		FUNC2(&vq->vq_lock);
		if (nio->io_done == vdev_queue_agg_io_done) {
			FUNC6(nio);
		} else {
			FUNC7(nio);
			FUNC5(nio);
		}
		FUNC1(&vq->vq_lock);
	}

	FUNC2(&vq->vq_lock);
}