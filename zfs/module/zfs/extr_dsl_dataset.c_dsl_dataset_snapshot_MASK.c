#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spa_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_3__ {int /*<<< orphan*/  ddsa_cr; int /*<<< orphan*/ * ddsa_errors; int /*<<< orphan*/ * ddsa_props; int /*<<< orphan*/ * ddsa_snaps; } ;
typedef  TYPE_1__ dsl_dataset_snapshot_arg_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPA_VERSION_FAST_SNAP ; 
 int ZFS_MAX_DATASET_NAME_LEN ; 
 int /*<<< orphan*/  ZFS_SPACE_CHECK_NORMAL ; 
 int /*<<< orphan*/  dsl_dataset_snapshot_check ; 
 int /*<<< orphan*/  dsl_dataset_snapshot_sync ; 
 int FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,uintptr_t) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (char*,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 char* FUNC13 (char*,char) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int FUNC16 (char*,void**) ; 

int
FUNC17(nvlist_t *snaps, nvlist_t *props, nvlist_t *errors)
{
	dsl_dataset_snapshot_arg_t ddsa;
	nvpair_t *pair;
	boolean_t needsuspend;
	int error;
	spa_t *spa;
	char *firstname;
	nvlist_t *suspended = NULL;

	pair = FUNC8(snaps, NULL);
	if (pair == NULL)
		return (0);
	firstname = FUNC9(pair);

	error = FUNC11(firstname, &spa, FTAG);
	if (error != 0)
		return (error);
	needsuspend = (FUNC12(spa) < SPA_VERSION_FAST_SNAP);
	FUNC10(spa, FTAG);

	if (needsuspend) {
		suspended = FUNC4();
		for (pair = FUNC8(snaps, NULL); pair != NULL;
		    pair = FUNC8(snaps, pair)) {
			char fsname[ZFS_MAX_DATASET_NAME_LEN];
			char *snapname = FUNC9(pair);
			char *atp;
			void *cookie;

			atp = FUNC13(snapname, '@');
			if (atp == NULL) {
				error = FUNC1(EINVAL);
				break;
			}
			(void) FUNC14(fsname, snapname, atp - snapname + 1);

			error = FUNC16(fsname, &cookie);
			if (error != 0)
				break;
			FUNC3(suspended, fsname,
			    (uintptr_t)cookie);
		}
	}

	ddsa.ddsa_snaps = snaps;
	ddsa.ddsa_props = props;
	ddsa.ddsa_errors = errors;
	ddsa.ddsa_cr = FUNC0();

	if (error == 0) {
		error = FUNC2(firstname, dsl_dataset_snapshot_check,
		    dsl_dataset_snapshot_sync, &ddsa,
		    FUNC6(snaps) * 3, ZFS_SPACE_CHECK_NORMAL);
	}

	if (suspended != NULL) {
		for (pair = FUNC8(suspended, NULL); pair != NULL;
		    pair = FUNC8(suspended, pair)) {
			FUNC15((void *)(uintptr_t)
			    FUNC7(pair));
		}
		FUNC5(suspended);
	}

	return (error);
}