#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int io_flags; int /*<<< orphan*/  io_bp_orig; int /*<<< orphan*/ * io_bp; } ;
typedef  TYPE_1__ zio_t ;
struct TYPE_5__ {int /*<<< orphan*/ * os_synctx; int /*<<< orphan*/ * os_dsl_dataset; } ;
typedef  TYPE_2__ objset_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;
typedef  int /*<<< orphan*/  blkptr_t ;
typedef  int /*<<< orphan*/  arc_buf_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  B_TRUE ; 
 int ZIO_FLAG_IO_REWRITE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC5(zio_t *zio, arc_buf_t *abuf, void *arg)
{
	blkptr_t *bp = zio->io_bp;
	blkptr_t *bp_orig = &zio->io_bp_orig;
	objset_t *os = arg;

	if (zio->io_flags & ZIO_FLAG_IO_REWRITE) {
		FUNC0(FUNC1(bp, bp_orig));
	} else {
		dsl_dataset_t *ds = os->os_dsl_dataset;
		dmu_tx_t *tx = os->os_synctx;

		(void) FUNC3(ds, bp_orig, tx, B_TRUE);
		FUNC2(ds, bp, tx);
	}
	FUNC4(bp, sizeof (*bp));
}