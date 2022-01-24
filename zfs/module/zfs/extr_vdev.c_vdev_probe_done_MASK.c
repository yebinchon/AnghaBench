#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ io_type; scalar_t__ io_error; int /*<<< orphan*/  io_abd; int /*<<< orphan*/  io_size; int /*<<< orphan*/  io_offset; TYPE_3__* io_private; TYPE_2__* io_vd; int /*<<< orphan*/ * io_spa; } ;
typedef  TYPE_1__ zio_t ;
typedef  int /*<<< orphan*/  zio_link_t ;
struct TYPE_19__ {int vdev_cant_read; int vdev_cant_write; int /*<<< orphan*/  vdev_probe_lock; TYPE_1__* vdev_probe_zio; } ;
typedef  TYPE_2__ vdev_t ;
struct TYPE_20__ {int vps_readable; int vps_writeable; int /*<<< orphan*/  vps_flags; } ;
typedef  TYPE_3__ vdev_probe_stats_t ;
typedef  int /*<<< orphan*/  spa_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FM_EREPORT_ZFS_PROBE_FAILURE ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZIO_CHECKSUM_OFF ; 
 int /*<<< orphan*/  ZIO_PRIORITY_SYNC_WRITE ; 
 scalar_t__ ZIO_TYPE_NULL ; 
 scalar_t__ ZIO_TYPE_READ ; 
 scalar_t__ ZIO_TYPE_WRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC9 (TYPE_2__*) ; 
 scalar_t__ FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void (*) (TYPE_1__*),TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC15(zio_t *zio)
{
	spa_t *spa = zio->io_spa;
	vdev_t *vd = zio->io_vd;
	vdev_probe_stats_t *vps = zio->io_private;

	FUNC0(vd->vdev_probe_zio != NULL);

	if (zio->io_type == ZIO_TYPE_READ) {
		if (zio->io_error == 0)
			vps->vps_readable = 1;
		if (zio->io_error == 0 && FUNC6(spa)) {
			FUNC12(FUNC14(vd->vdev_probe_zio, vd,
			    zio->io_offset, zio->io_size, zio->io_abd,
			    ZIO_CHECKSUM_OFF, vdev_probe_done, vps,
			    ZIO_PRIORITY_SYNC_WRITE, vps->vps_flags, B_TRUE));
		} else {
			FUNC2(zio->io_abd);
		}
	} else if (zio->io_type == ZIO_TYPE_WRITE) {
		if (zio->io_error == 0)
			vps->vps_writeable = 1;
		FUNC2(zio->io_abd);
	} else if (zio->io_type == ZIO_TYPE_NULL) {
		zio_t *pio;
		zio_link_t *zl;

		vd->vdev_cant_read |= !vps->vps_readable;
		vd->vdev_cant_write |= !vps->vps_writeable;

		if (FUNC9(vd) &&
		    (FUNC10(vd) || !FUNC6(spa))) {
			zio->io_error = 0;
		} else {
			FUNC0(zio->io_error != 0);
			FUNC8(vd, "failed probe");
			FUNC11(FM_EREPORT_ZFS_PROBE_FAILURE,
			    spa, vd, NULL, NULL, 0, 0);
			zio->io_error = FUNC1(ENXIO);
		}

		FUNC4(&vd->vdev_probe_lock);
		FUNC0(vd->vdev_probe_zio == zio);
		vd->vdev_probe_zio = NULL;
		FUNC5(&vd->vdev_probe_lock);

		zl = NULL;
		while ((pio = FUNC13(zio, &zl)) != NULL)
			if (!FUNC7(vd, pio))
				pio->io_error = FUNC1(ENXIO);

		FUNC3(vps, sizeof (*vps));
	}
}