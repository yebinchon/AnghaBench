#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int /*<<< orphan*/  zb_blkid; int /*<<< orphan*/  zb_level; int /*<<< orphan*/  zb_object; int /*<<< orphan*/  zb_objset; } ;
struct TYPE_15__ {scalar_t__ io_timestamp; int /*<<< orphan*/  io_lock; int /*<<< orphan*/  io_tqent; int /*<<< orphan*/  io_spa; int /*<<< orphan*/  io_error; int /*<<< orphan*/  io_size; int /*<<< orphan*/  io_offset; int /*<<< orphan*/  io_pipeline_trace; int /*<<< orphan*/  io_pipeline; int /*<<< orphan*/  io_stage; int /*<<< orphan*/  io_flags; int /*<<< orphan*/  io_priority; int /*<<< orphan*/  io_type; int /*<<< orphan*/  io_delay; int /*<<< orphan*/  io_delta; TYPE_3__ io_bookmark; TYPE_4__* io_vd; } ;
typedef  TYPE_2__ zio_t ;
typedef  int /*<<< orphan*/  zio_link_t ;
typedef  TYPE_3__ zbookmark_phys_t ;
struct TYPE_18__ {int /*<<< orphan*/  vq_io_complete_ts; } ;
struct TYPE_17__ {char* vdev_path; TYPE_5__ vdev_queue; TYPE_1__* vdev_ops; } ;
typedef  TYPE_4__ vdev_t ;
typedef  TYPE_5__ vdev_queue_t ;
typedef  scalar_t__ uint64_t ;
struct TYPE_14__ {scalar_t__ vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FM_EREPORT_ZFS_DEADMAN ; 
 scalar_t__ ZIO_FAILURE_MODE_CONTINUE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,TYPE_2__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ zio_deadman_log_all ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 TYPE_2__* FUNC8 (TYPE_2__*,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void
FUNC9(zio_t *pio, int ziodepth)
{
	zio_t *cio, *cio_next;
	zio_link_t *zl = NULL;
	vdev_t *vd = pio->io_vd;

	if (zio_deadman_log_all || (vd != NULL && vd->vdev_ops->vdev_op_leaf)) {
		vdev_queue_t *vq = vd ? &vd->vdev_queue : NULL;
		zbookmark_phys_t *zb = &pio->io_bookmark;
		uint64_t delta = FUNC0() - pio->io_timestamp;
		uint64_t failmode = FUNC3(pio->io_spa);

		FUNC5("slow zio[%d]: zio=%px timestamp=%llu "
		    "delta=%llu queued=%llu io=%llu "
		    "path=%s last=%llu "
		    "type=%d priority=%d flags=0x%x "
		    "stage=0x%x pipeline=0x%x pipeline-trace=0x%x "
		    "objset=%llu object=%llu level=%llu blkid=%llu "
		    "offset=%llu size=%llu error=%d",
		    ziodepth, pio, pio->io_timestamp,
		    delta, pio->io_delta, pio->io_delay,
		    vd ? vd->vdev_path : "NULL", vq ? vq->vq_io_complete_ts : 0,
		    pio->io_type, pio->io_priority, pio->io_flags,
		    pio->io_stage, pio->io_pipeline, pio->io_pipeline_trace,
		    zb->zb_objset, zb->zb_object, zb->zb_level, zb->zb_blkid,
		    pio->io_offset, pio->io_size, pio->io_error);
		FUNC6(FM_EREPORT_ZFS_DEADMAN,
		    pio->io_spa, vd, zb, pio, 0, 0);

		if (failmode == ZIO_FAILURE_MODE_CONTINUE &&
		    FUNC4(&pio->io_tqent)) {
			FUNC7(pio);
		}
	}

	FUNC1(&pio->io_lock);
	for (cio = FUNC8(pio, &zl); cio != NULL; cio = cio_next) {
		cio_next = FUNC8(pio, &zl);
		FUNC9(cio, ziodepth + 1);
	}
	FUNC2(&pio->io_lock);
}