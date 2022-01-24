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
struct TYPE_5__ {scalar_t__ io_error; int /*<<< orphan*/  io_spa; TYPE_2__* io_vd; } ;
typedef  TYPE_1__ zio_t ;
struct TYPE_6__ {int /*<<< orphan*/  vdev_remove_wanted; TYPE_3__* vdev_tsd; } ;
typedef  TYPE_2__ vdev_t ;
struct TYPE_7__ {int /*<<< orphan*/  vd_bdev; } ;
typedef  TYPE_3__ vdev_disk_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 scalar_t__ EIO ; 
 int /*<<< orphan*/  SPA_ASYNC_REMOVE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(zio_t *zio)
{
	/*
	 * If the device returned EIO, we revalidate the media.  If it is
	 * determined the media has changed this triggers the asynchronous
	 * removal of the device from the configuration.
	 */
	if (zio->io_error == EIO) {
		vdev_t *v = zio->io_vd;
		vdev_disk_t *vd = v->vdev_tsd;

		if (FUNC0(vd->vd_bdev)) {
			FUNC1(vd->vd_bdev);
			v->vdev_remove_wanted = B_TRUE;
			FUNC2(zio->io_spa, SPA_ASYNC_REMOVE);
		}
	}
}