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
struct TYPE_18__ {scalar_t__ io_type; scalar_t__ io_error; scalar_t__ io_delay; TYPE_2__* io_vd; } ;
typedef  TYPE_1__ zio_t ;
struct TYPE_19__ {TYPE_3__* vdev_ops; } ;
typedef  TYPE_2__ vdev_t ;
struct TYPE_20__ {int /*<<< orphan*/  (* vdev_op_io_done ) (TYPE_1__*) ;scalar_t__ vdev_op_leaf; } ;
typedef  TYPE_3__ vdev_ops_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_FALSE ; 
 scalar_t__ B_TRUE ; 
 int /*<<< orphan*/  EILSEQ ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENXIO ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZIO_CHILD_VDEV_BIT ; 
 scalar_t__ ZIO_TYPE_READ ; 
 scalar_t__ ZIO_TYPE_TRIM ; 
 scalar_t__ ZIO_TYPE_WRITE ; 
 int /*<<< orphan*/  ZIO_WAIT_DONE ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_3__ vdev_mirror_ops ; 
 int /*<<< orphan*/ * FUNC7 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 scalar_t__ FUNC9 (TYPE_2__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ zio_injection_enabled ; 
 scalar_t__ FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zio_t *
FUNC12(zio_t *zio)
{
	vdev_t *vd = zio->io_vd;
	vdev_ops_t *ops = vd ? vd->vdev_ops : &vdev_mirror_ops;
	boolean_t unexpected_error = B_FALSE;

	if (FUNC11(zio, ZIO_CHILD_VDEV_BIT, ZIO_WAIT_DONE)) {
		return (NULL);
	}

	FUNC0(zio->io_type == ZIO_TYPE_READ ||
	    zio->io_type == ZIO_TYPE_WRITE || zio->io_type == ZIO_TYPE_TRIM);

	if (zio->io_delay)
		zio->io_delay = FUNC3() - zio->io_delay;

	if (vd != NULL && vd->vdev_ops->vdev_op_leaf) {

		FUNC8(zio);

		if (zio->io_type == ZIO_TYPE_WRITE)
			FUNC6(zio);

		if (zio_injection_enabled && zio->io_error == 0)
			zio->io_error = FUNC9(vd, zio,
			    EIO, EILSEQ);

		if (zio_injection_enabled && zio->io_error == 0)
			zio->io_error = FUNC10(zio, EIO);

		if (zio->io_error && zio->io_type != ZIO_TYPE_TRIM) {
			if (!FUNC5(vd, zio)) {
				zio->io_error = FUNC1(ENXIO);
			} else {
				unexpected_error = B_TRUE;
			}
		}
	}

	ops->vdev_op_io_done(zio);

	if (unexpected_error)
		FUNC2(FUNC7(vd, zio) == NULL);

	return (zio);
}