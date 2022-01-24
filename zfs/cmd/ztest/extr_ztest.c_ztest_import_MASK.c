#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {unsigned long long zs_metaslab_sz; } ;
typedef  TYPE_3__ ztest_shared_t ;
struct TYPE_14__ {TYPE_2__* spa_root_vdev; } ;
typedef  TYPE_4__ spa_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_15__ {int paths; char** path; int /*<<< orphan*/  can_be_active; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_5__ importargs_t ;
struct TYPE_16__ {char* zo_pool; char* zo_dir; int /*<<< orphan*/  zo_mmp_test; } ;
struct TYPE_12__ {TYPE_1__** vdev_child; } ;
struct TYPE_11__ {unsigned long long vdev_ms_shift; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_FALSE ; 
 int FREAD ; 
 int /*<<< orphan*/  FTAG ; 
 int FWRITE ; 
 int /*<<< orphan*/  MUTEX_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ZFS_IMPORT_MISSING_LOG ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  libzpool_config_ops ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,TYPE_4__**,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ztest_checkpoint_lock ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  ztest_name_lock ; 
 TYPE_6__ ztest_opts ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  ztest_vdev_lock ; 

__attribute__((used)) static void
FUNC14(ztest_shared_t *zs)
{
	importargs_t args = { 0 };
	spa_t *spa;
	nvlist_t *cfg = NULL;
	int nsearch = 1;
	char *searchdirs[nsearch];
	char *name = ztest_opts.zo_pool;
	int flags = ZFS_IMPORT_MISSING_LOG;
	int error;

	FUNC5(&ztest_vdev_lock, NULL, MUTEX_DEFAULT, NULL);
	FUNC5(&ztest_checkpoint_lock, NULL, MUTEX_DEFAULT, NULL);
	FUNC0(FUNC7(&ztest_name_lock, NULL));

	FUNC3(FREAD | FWRITE);

	searchdirs[0] = ztest_opts.zo_dir;
	args.paths = nsearch;
	args.path = searchdirs;
	args.can_be_active = B_FALSE;

	error = FUNC11(NULL, name, &cfg, &args,
	    &libzpool_config_ops);
	if (error)
		(void) FUNC1(0, "No pools found\n");

	FUNC0(FUNC9(name, cfg, NULL, flags));
	FUNC0(FUNC10(name, &spa, FTAG));
	zs->zs_metaslab_sz =
	    1ULL << spa->spa_root_vdev->vdev_child[0]->vdev_ms_shift;
	FUNC8(spa, FTAG);

	FUNC2();

	if (!ztest_opts.zo_mmp_test) {
		FUNC13(ztest_opts.zo_pool);
		FUNC12();
		FUNC13(ztest_opts.zo_pool);
	}

	(void) FUNC6(&ztest_name_lock);
	FUNC4(&ztest_vdev_lock);
	FUNC4(&ztest_checkpoint_lock);
}