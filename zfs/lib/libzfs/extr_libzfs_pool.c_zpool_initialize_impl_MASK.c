#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  zpool_hdl; int /*<<< orphan*/  zpool_name; } ;
typedef  TYPE_1__ zpool_handle_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  pool_initialize_func_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  TEXT_DOMAIN ; 
 int /*<<< orphan*/  ZPOOL_INITIALIZE_VDEVS ; 
 int /*<<< orphan*/  ZPOOL_WAIT_INITIALIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*) ; 
 int FUNC16 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

int
FUNC17(zpool_handle_t *zhp, pool_initialize_func_t cmd_type,
    nvlist_t *vds, boolean_t wait)
{
	int err;

	nvlist_t *vdev_guids = FUNC1();
	nvlist_t *guids_to_paths = FUNC1();
	nvlist_t *vd_errlist = NULL;
	nvlist_t *errlist;
	nvpair_t *elem;

	err = FUNC16(zhp, vds, vdev_guids,
	    guids_to_paths, &vd_errlist);

	if (err != 0) {
		FUNC11(vd_errlist != NULL);
		goto list_errors;
	}

	err = FUNC6(zhp->zpool_name, cmd_type,
	    vdev_guids, &errlist);

	if (err != 0) {
		if (errlist != NULL) {
			vd_errlist = FUNC3(errlist,
			    ZPOOL_INITIALIZE_VDEVS);
			goto list_errors;
		}
		(void) FUNC14(zhp->zpool_hdl, err,
		    FUNC0(TEXT_DOMAIN, "operation failed"));
		goto out;
	}

	if (wait) {
		for (elem = FUNC9(vdev_guids, NULL); elem != NULL;
		    elem = FUNC9(vdev_guids, elem)) {

			uint64_t guid = FUNC5(elem);

			err = FUNC7(zhp->zpool_name,
			    ZPOOL_WAIT_INITIALIZE, guid, NULL);
			if (err != 0) {
				(void) FUNC15(zhp->zpool_hdl,
				    err, FUNC0(TEXT_DOMAIN, "error "
				    "waiting for '%s' to initialize"),
				    FUNC10(elem));

				goto out;
			}
		}
	}
	goto out;

list_errors:
	for (elem = FUNC9(vd_errlist, NULL); elem != NULL;
	    elem = FUNC9(vd_errlist, elem)) {
		int64_t vd_error = FUNC12(FUNC4(elem));
		char *path;

		if (FUNC8(guids_to_paths, FUNC10(elem),
		    &path) != 0)
			path = FUNC10(elem);

		(void) FUNC13(zhp->zpool_hdl, vd_error,
		    "cannot initialize '%s'", path);
	}

out:
	FUNC2(vdev_guids);
	FUNC2(guids_to_paths);

	if (vd_errlist != NULL)
		FUNC2(vd_errlist);

	return (err == 0 ? 0 : -1);
}