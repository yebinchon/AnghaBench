#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zio_t ;
struct TYPE_10__ {int /*<<< orphan*/  vdev_spa; TYPE_1__* vdev_ops; } ;
typedef  TYPE_2__ vdev_t ;
typedef  int /*<<< orphan*/  abd_t ;
struct TYPE_9__ {int vdev_op_leaf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RW_READER ; 
 int SCL_L2ARC ; 
 scalar_t__ SCL_STATE ; 
 int SCL_ZIO ; 
 int VDEV_LABELS ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int ZIO_FLAG_CANFAIL ; 
 int ZIO_FLAG_CONFIG_WRITER ; 
 int ZIO_FLAG_DONT_PROPAGATE ; 
 int ZIO_FLAG_SPECULATIVE ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_2__*,int const,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC16(vdev_t *vd)
{
	abd_t *ub_abd;
	zio_t *write_zio;
	int locks = (SCL_L2ARC | SCL_ZIO);
	int flags = ZIO_FLAG_CONFIG_WRITER | ZIO_FLAG_CANFAIL |
	    ZIO_FLAG_SPECULATIVE;

	FUNC0(FUNC10(vd->vdev_spa, SCL_STATE, RW_READER) ==
	    SCL_STATE);
	FUNC0(vd->vdev_ops->vdev_op_leaf);

	FUNC8(vd->vdev_spa, locks, FTAG, RW_READER);

	ub_abd = FUNC4(FUNC3(vd), B_TRUE);

	write_zio = FUNC14(vd->vdev_spa, NULL, NULL, flags);
	for (int n = 0; n < FUNC1(vd); n++) {
		const int src_label = 0;
		zio_t *zio;

		zio = FUNC14(vd->vdev_spa, NULL, NULL, flags);
		FUNC12(zio, vd, src_label, ub_abd,
		    FUNC2(vd, n), FUNC3(vd),
		    NULL, NULL, flags);

		if (FUNC15(zio) || FUNC11(FUNC6(ub_abd)))
			FUNC7(ub_abd, FUNC3(vd));

		for (int l = 2; l < VDEV_LABELS; l++)
			FUNC13(write_zio, vd, l, ub_abd,
			    FUNC2(vd, n),
			    FUNC3(vd), NULL, NULL,
			    flags | ZIO_FLAG_DONT_PROPAGATE);
	}
	(void) FUNC15(write_zio);

	FUNC9(vd->vdev_spa, locks, FTAG);

	FUNC5(ub_abd);
}