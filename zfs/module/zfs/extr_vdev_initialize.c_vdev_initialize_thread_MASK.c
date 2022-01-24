#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ vdev_initialize_inflight; int /*<<< orphan*/  vdev_initialize_lock; int /*<<< orphan*/  vdev_initialize_cv; int /*<<< orphan*/ * vdev_initialize_thread; int /*<<< orphan*/  vdev_initialize_exit_wanted; int /*<<< orphan*/ * vdev_initialize_tree; int /*<<< orphan*/  vdev_initialize_io_lock; int /*<<< orphan*/  vdev_initialize_io_cv; TYPE_1__* vdev_top; int /*<<< orphan*/  vdev_detached; scalar_t__ vdev_initialize_last_offset; int /*<<< orphan*/ * vdev_spa; } ;
typedef  TYPE_2__ vdev_t ;
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  spa_t ;
struct TYPE_16__ {int /*<<< orphan*/  ms_lock; int /*<<< orphan*/  ms_allocatable; int /*<<< orphan*/  ms_loading; int /*<<< orphan*/  ms_loaded; } ;
typedef  TYPE_3__ metaslab_t ;
typedef  int /*<<< orphan*/  boolean_t ;
typedef  int /*<<< orphan*/  abd_t ;
struct TYPE_14__ {size_t vdev_ms_count; TYPE_3__** vdev_ms; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  B_FALSE ; 
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  RANGE_SEG64 ; 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_CONFIG ; 
 int /*<<< orphan*/  VDEV_INITIALIZE_COMPLETE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_2__*) ; 
 int /*<<< orphan*/  vdev_initialize_range_add ; 
 int FUNC22 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC23 (TYPE_2__*) ; 
 scalar_t__ FUNC24 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC25(void *arg)
{
	vdev_t *vd = arg;
	spa_t *spa = vd->vdev_spa;
	int error = 0;
	uint64_t ms_count = 0;

	FUNC0(FUNC23(vd));
	FUNC13(spa, SCL_CONFIG, FTAG, RW_READER);

	vd->vdev_initialize_last_offset = 0;
	FUNC1(FUNC21(vd));

	abd_t *deadbeef = FUNC17();

	vd->vdev_initialize_tree = FUNC9(NULL, RANGE_SEG64, NULL,
	    0, 0);

	for (uint64_t i = 0; !vd->vdev_detached &&
	    i < vd->vdev_top->vdev_ms_count; i++) {
		metaslab_t *msp = vd->vdev_top->vdev_ms[i];
		boolean_t unload_when_done = B_FALSE;

		/*
		 * If we've expanded the top-level vdev or it's our
		 * first pass, calculate our progress.
		 */
		if (vd->vdev_top->vdev_ms_count != ms_count) {
			FUNC19(vd);
			ms_count = vd->vdev_top->vdev_ms_count;
		}

		FUNC14(spa, SCL_CONFIG, FTAG);
		FUNC4(msp);
		FUNC7(&msp->ms_lock);
		if (!msp->ms_loaded && !msp->ms_loading)
			unload_when_done = B_TRUE;
		FUNC1(FUNC6(msp));

		FUNC12(msp->ms_allocatable, vdev_initialize_range_add,
		    vd);
		FUNC8(&msp->ms_lock);

		error = FUNC22(vd, deadbeef);
		FUNC5(msp, B_TRUE, unload_when_done);
		FUNC13(spa, SCL_CONFIG, FTAG, RW_READER);

		FUNC11(vd->vdev_initialize_tree, NULL, NULL);
		if (error != 0)
			break;
	}

	FUNC14(spa, SCL_CONFIG, FTAG);
	FUNC7(&vd->vdev_initialize_io_lock);
	while (vd->vdev_initialize_inflight > 0) {
		FUNC3(&vd->vdev_initialize_io_cv,
		    &vd->vdev_initialize_io_lock);
	}
	FUNC8(&vd->vdev_initialize_io_lock);

	FUNC10(vd->vdev_initialize_tree);
	FUNC18(deadbeef);
	vd->vdev_initialize_tree = NULL;

	FUNC7(&vd->vdev_initialize_lock);
	if (!vd->vdev_initialize_exit_wanted && FUNC24(vd)) {
		FUNC20(vd, VDEV_INITIALIZE_COMPLETE);
	}
	FUNC0(vd->vdev_initialize_thread != NULL ||
	    vd->vdev_initialize_inflight == 0);

	/*
	 * Drop the vdev_initialize_lock while we sync out the
	 * txg since it's possible that a device might be trying to
	 * come online and must check to see if it needs to restart an
	 * initialization. That thread will be holding the spa_config_lock
	 * which would prevent the txg_wait_synced from completing.
	 */
	FUNC8(&vd->vdev_initialize_lock);
	FUNC16(FUNC15(spa), 0);
	FUNC7(&vd->vdev_initialize_lock);

	vd->vdev_initialize_thread = NULL;
	FUNC2(&vd->vdev_initialize_cv);
	FUNC8(&vd->vdev_initialize_lock);
}