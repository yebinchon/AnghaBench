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
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_9__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_10__ {int (* ddura_holdfunc ) (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ;int /*<<< orphan*/  ddura_chkholds; int /*<<< orphan*/  ddura_todelete; int /*<<< orphan*/ * ddura_errlist; int /*<<< orphan*/ * ddura_holds; } ;
typedef  TYPE_2__ dsl_dataset_user_release_arg_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  NV_UNIQUE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_EXTRA_RESERVED ; 
 int FUNC1 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dsl_dataset_user_release_check ; 
 int /*<<< orphan*/  dsl_dataset_user_release_sync ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 char* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static int
FUNC14(nvlist_t *holds, nvlist_t *errlist,
    dsl_pool_t *tmpdp)
{
	dsl_dataset_user_release_arg_t ddura;
	nvpair_t *pair;
	char *pool;
	int error;

	pair = FUNC10(holds, NULL);
	if (pair == NULL)
		return (0);

	/*
	 * The release may cause snapshots to be destroyed; make sure they
	 * are not mounted.
	 */
	if (tmpdp != NULL) {
		/* Temporary holds are specified by dsobj string. */
		ddura.ddura_holdfunc = dsl_dataset_hold_obj_string;
		pool = FUNC12(tmpdp->dp_spa);
#ifdef _KERNEL
		for (pair = nvlist_next_nvpair(holds, NULL); pair != NULL;
		    pair = nvlist_next_nvpair(holds, pair)) {
			dsl_dataset_t *ds;

			dsl_pool_config_enter(tmpdp, FTAG);
			error = dsl_dataset_hold_obj_string(tmpdp,
			    nvpair_name(pair), FTAG, &ds);
			if (error == 0) {
				char name[ZFS_MAX_DATASET_NAME_LEN];
				dsl_dataset_name(ds, name);
				dsl_pool_config_exit(tmpdp, FTAG);
				dsl_dataset_rele(ds, FTAG);
				(void) zfs_unmount_snap(name);
			} else {
				dsl_pool_config_exit(tmpdp, FTAG);
			}
		}
#endif
	} else {
		/* Non-temporary holds are specified by name. */
		ddura.ddura_holdfunc = dsl_dataset_hold;
		pool = FUNC11(pair);
#ifdef _KERNEL
		for (pair = nvlist_next_nvpair(holds, NULL); pair != NULL;
		    pair = nvlist_next_nvpair(holds, pair)) {
			(void) zfs_unmount_snap(nvpair_name(pair));
		}
#endif
	}

	ddura.ddura_holds = holds;
	ddura.ddura_errlist = errlist;
	FUNC0(FUNC9(&ddura.ddura_todelete, NV_UNIQUE_NAME,
	    KM_SLEEP));
	FUNC0(FUNC9(&ddura.ddura_chkholds, NV_UNIQUE_NAME,
	    KM_SLEEP));

	error = FUNC7(pool, dsl_dataset_user_release_check,
	    dsl_dataset_user_release_sync, &ddura, 0,
	    ZFS_SPACE_CHECK_EXTRA_RESERVED);
	FUNC8(ddura.ddura_todelete);
	FUNC8(ddura.ddura_chkholds);

	return (error);
}