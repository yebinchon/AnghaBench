#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ztest_ds_t ;
struct TYPE_10__ {int vdev_guid; int /*<<< orphan*/ * vdev_initialize_thread; int /*<<< orphan*/  vdev_path; } ;
typedef  TYPE_1__ vdev_t ;
typedef  int uint64_t ;
struct TYPE_11__ {int /*<<< orphan*/  spa_root_vdev; } ;
typedef  TYPE_2__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  boolean_t ;
struct TYPE_12__ {int zo_verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
#define  POOL_INITIALIZE_CANCEL 130 
 int /*<<< orphan*/  POOL_INITIALIZE_FUNCS ; 
#define  POOL_INITIALIZE_START 129 
#define  POOL_INITIALIZE_SUSPEND 128 
 int /*<<< orphan*/  RW_READER ; 
 int /*<<< orphan*/  SCL_VDEV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC9 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,TYPE_1__*,int) ; 
 TYPE_5__ ztest_opts ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_2__* ztest_spa ; 
 int /*<<< orphan*/  ztest_vdev_lock ; 

void
FUNC14(ztest_ds_t *zd, uint64_t id)
{
	spa_t *spa = ztest_spa;
	int error = 0;

	FUNC4(&ztest_vdev_lock);

	FUNC7(spa, SCL_VDEV, FTAG, RW_READER);

	/* Random leaf vdev */
	vdev_t *rand_vd = FUNC13(spa->spa_root_vdev);
	if (rand_vd == NULL) {
		FUNC8(spa, SCL_VDEV, FTAG);
		FUNC5(&ztest_vdev_lock);
		return;
	}

	/*
	 * The random vdev we've selected may change as soon as we
	 * drop the spa_config_lock. We create local copies of things
	 * we're interested in.
	 */
	uint64_t guid = rand_vd->vdev_guid;
	char *path = FUNC10(rand_vd->vdev_path);
	boolean_t active = rand_vd->vdev_initialize_thread != NULL;

	FUNC11("vd %px, guid %llu", rand_vd, guid);
	FUNC8(spa, SCL_VDEV, FTAG);

	uint64_t cmd = FUNC12(POOL_INITIALIZE_FUNCS);

	nvlist_t *vdev_guids = FUNC1();
	nvlist_t *vdev_errlist = FUNC1();
	FUNC0(vdev_guids, path, guid);
	error = FUNC9(spa, vdev_guids, cmd, vdev_errlist);
	FUNC2(vdev_guids);
	FUNC2(vdev_errlist);

	switch (cmd) {
	case POOL_INITIALIZE_CANCEL:
		if (ztest_opts.zo_verbose >= 4) {
			(void) FUNC6("Cancel initialize %s", path);
			if (!active)
				(void) FUNC6(" failed (no initialize active)");
			(void) FUNC6("\n");
		}
		break;
	case POOL_INITIALIZE_START:
		if (ztest_opts.zo_verbose >= 4) {
			(void) FUNC6("Start initialize %s", path);
			if (active && error == 0)
				(void) FUNC6(" failed (already active)");
			else if (error != 0)
				(void) FUNC6(" failed (error %d)", error);
			(void) FUNC6("\n");
		}
		break;
	case POOL_INITIALIZE_SUSPEND:
		if (ztest_opts.zo_verbose >= 4) {
			(void) FUNC6("Suspend initialize %s", path);
			if (!active)
				(void) FUNC6(" failed (no initialize active)");
			(void) FUNC6("\n");
		}
		break;
	}
	FUNC3(path);
	FUNC5(&ztest_vdev_lock);
}