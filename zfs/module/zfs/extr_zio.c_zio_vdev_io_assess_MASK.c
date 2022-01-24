#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int io_flags; scalar_t__ io_error; int io_stage; scalar_t__ io_type; scalar_t__ io_cmd; scalar_t__ io_child_type; int /*<<< orphan*/  io_logical; int /*<<< orphan*/  (* io_physdone ) (int /*<<< orphan*/ ) ;int /*<<< orphan*/  io_pipeline; int /*<<< orphan*/ * io_vsd; TYPE_1__* io_vsd_ops; int /*<<< orphan*/  io_spa; TYPE_4__* io_vd; } ;
typedef  TYPE_3__ zio_t ;
struct TYPE_17__ {TYPE_2__* vdev_ops; void* vdev_nowritecache; void* vdev_cant_write; } ;
typedef  TYPE_4__ vdev_t ;
struct TYPE_15__ {scalar_t__ vdev_op_leaf; } ;
struct TYPE_14__ {int /*<<< orphan*/  (* vsd_free ) (TYPE_3__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* B_TRUE ; 
 scalar_t__ DKIOCFLUSHWRITECACHE ; 
 int /*<<< orphan*/  EIO ; 
 scalar_t__ ENOTSUP ; 
 scalar_t__ ENOTTY ; 
 scalar_t__ ENXIO ; 
 int /*<<< orphan*/  SCL_ZIO ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ ZIO_CHILD_VDEV ; 
 int /*<<< orphan*/  ZIO_CHILD_VDEV_BIT ; 
 int ZIO_FLAG_CONFIG_WRITER ; 
 int ZIO_FLAG_DELEGATED ; 
 int ZIO_FLAG_DONT_AGGREGATE ; 
 int ZIO_FLAG_DONT_CACHE ; 
 int ZIO_FLAG_DONT_QUEUE ; 
 int ZIO_FLAG_DONT_RETRY ; 
 int ZIO_FLAG_IO_BYPASS ; 
 int ZIO_FLAG_IO_RETRY ; 
 int /*<<< orphan*/  ZIO_INTERLOCK_PIPELINE ; 
 int ZIO_STAGE_VDEV_IO_START ; 
 int /*<<< orphan*/  ZIO_TASKQ_ISSUE ; 
 scalar_t__ ZIO_TYPE_IOCTL ; 
 scalar_t__ ZIO_TYPE_WRITE ; 
 int /*<<< orphan*/  ZIO_WAIT_DONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ zio_injection_enabled ; 
 int /*<<< orphan*/  zio_requeue_io_start_cut_in_line ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zio_t *
FUNC9(zio_t *zio)
{
	vdev_t *vd = zio->io_vd;

	if (FUNC8(zio, ZIO_CHILD_VDEV_BIT, ZIO_WAIT_DONE)) {
		return (NULL);
	}

	if (vd == NULL && !(zio->io_flags & ZIO_FLAG_CONFIG_WRITER))
		FUNC2(zio->io_spa, SCL_ZIO, zio);

	if (zio->io_vsd != NULL) {
		zio->io_vsd_ops->vsd_free(zio);
		zio->io_vsd = NULL;
	}

	if (zio_injection_enabled && zio->io_error == 0)
		zio->io_error = FUNC6(zio, EIO);

	/*
	 * If the I/O failed, determine whether we should attempt to retry it.
	 *
	 * On retry, we cut in line in the issue queue, since we don't want
	 * compression/checksumming/etc. work to prevent our (cheap) IO reissue.
	 */
	if (zio->io_error && vd == NULL &&
	    !(zio->io_flags & (ZIO_FLAG_DONT_RETRY | ZIO_FLAG_IO_RETRY))) {
		FUNC0(!(zio->io_flags & ZIO_FLAG_DONT_QUEUE));	/* not a leaf */
		FUNC0(!(zio->io_flags & ZIO_FLAG_IO_BYPASS));	/* not a leaf */
		zio->io_error = 0;
		zio->io_flags |= ZIO_FLAG_IO_RETRY |
		    ZIO_FLAG_DONT_CACHE | ZIO_FLAG_DONT_AGGREGATE;
		zio->io_stage = ZIO_STAGE_VDEV_IO_START >> 1;
		FUNC7(zio, ZIO_TASKQ_ISSUE,
		    zio_requeue_io_start_cut_in_line);
		return (NULL);
	}

	/*
	 * If we got an error on a leaf device, convert it to ENXIO
	 * if the device is not accessible at all.
	 */
	if (zio->io_error && vd != NULL && vd->vdev_ops->vdev_op_leaf &&
	    !FUNC5(vd, zio))
		zio->io_error = FUNC1(ENXIO);

	/*
	 * If we can't write to an interior vdev (mirror or RAID-Z),
	 * set vdev_cant_write so that we stop trying to allocate from it.
	 */
	if (zio->io_error == ENXIO && zio->io_type == ZIO_TYPE_WRITE &&
	    vd != NULL && !vd->vdev_ops->vdev_op_leaf) {
		vd->vdev_cant_write = B_TRUE;
	}

	/*
	 * If a cache flush returns ENOTSUP or ENOTTY, we know that no future
	 * attempts will ever succeed. In this case we set a persistent
	 * boolean flag so that we don't bother with it in the future.
	 */
	if ((zio->io_error == ENOTSUP || zio->io_error == ENOTTY) &&
	    zio->io_type == ZIO_TYPE_IOCTL &&
	    zio->io_cmd == DKIOCFLUSHWRITECACHE && vd != NULL)
		vd->vdev_nowritecache = B_TRUE;

	if (zio->io_error)
		zio->io_pipeline = ZIO_INTERLOCK_PIPELINE;

	if (vd != NULL && vd->vdev_ops->vdev_op_leaf &&
	    zio->io_physdone != NULL) {
		FUNC0(!(zio->io_flags & ZIO_FLAG_DELEGATED));
		FUNC0(zio->io_child_type == ZIO_CHILD_VDEV);
		zio->io_physdone(zio->io_logical);
	}

	return (zio);
}