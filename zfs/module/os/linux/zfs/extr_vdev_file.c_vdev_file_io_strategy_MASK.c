#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ io_type; scalar_t__ io_error; int /*<<< orphan*/  io_size; int /*<<< orphan*/  io_abd; int /*<<< orphan*/  io_offset; TYPE_2__* io_vd; } ;
typedef  TYPE_1__ zio_t ;
struct TYPE_6__ {TYPE_3__* vdev_tsd; } ;
typedef  TYPE_2__ vdev_t ;
struct TYPE_7__ {int /*<<< orphan*/  vf_vnode; } ;
typedef  TYPE_3__ vdev_file_t ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOSPC ; 
 int /*<<< orphan*/  RLIM64_INFINITY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UIO_READ ; 
 int /*<<< orphan*/  UIO_SYSSPACE ; 
 int /*<<< orphan*/  UIO_WRITE ; 
 scalar_t__ ZIO_TYPE_READ ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  kcred ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC7(void *arg)
{
	zio_t *zio = (zio_t *)arg;
	vdev_t *vd = zio->io_vd;
	vdev_file_t *vf = vd->vdev_tsd;
	ssize_t resid;
	void *buf;

	if (zio->io_type == ZIO_TYPE_READ)
		buf = FUNC1(zio->io_abd, zio->io_size);
	else
		buf = FUNC2(zio->io_abd, zio->io_size);

	zio->io_error = FUNC5(zio->io_type == ZIO_TYPE_READ ?
	    UIO_READ : UIO_WRITE, vf->vf_vnode, buf, zio->io_size,
	    zio->io_offset, UIO_SYSSPACE, 0, RLIM64_INFINITY, kcred, &resid);

	if (zio->io_type == ZIO_TYPE_READ)
		FUNC4(zio->io_abd, buf, zio->io_size);
	else
		FUNC3(zio->io_abd, buf, zio->io_size);

	if (resid != 0 && zio->io_error == 0)
		zio->io_error = FUNC0(ENOSPC);

	FUNC6(zio);
}