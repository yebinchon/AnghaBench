#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ zbm_redaction_obj; } ;
typedef  TYPE_1__ zfs_bookmark_phys_t ;
typedef  int /*<<< orphan*/  redaction_list_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
struct TYPE_12__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_2__ dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
struct TYPE_13__ {int /*<<< orphan*/  dbda_errors; int /*<<< orphan*/  dbda_success; int /*<<< orphan*/  dbda_bmarks; } ;
typedef  TYPE_3__ dsl_bookmark_destroy_arg_t ;
struct TYPE_14__ {int /*<<< orphan*/  tx_pool; } ;
typedef  TYPE_4__ dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EBUSY ; 
 int ENOENT ; 
 int ESRCH ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_BOOKMARKS ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 TYPE_2__* FUNC3 (TYPE_4__*) ; 
 int FUNC4 (TYPE_2__*,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ ,char**) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 char* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC16(void *arg, dmu_tx_t *tx)
{
	dsl_bookmark_destroy_arg_t *dbda = arg;
	dsl_pool_t *dp = FUNC3(tx);
	int rv = 0;

	FUNC0(FUNC12(dbda->dbda_success));
	FUNC0(FUNC12(dbda->dbda_errors));

	if (!FUNC15(dp->dp_spa, SPA_FEATURE_BOOKMARKS))
		return (0);

	for (nvpair_t *pair = FUNC13(dbda->dbda_bmarks, NULL);
	    pair != NULL; pair = FUNC13(dbda->dbda_bmarks, pair)) {
		const char *fullname = FUNC14(pair);
		dsl_dataset_t *ds;
		zfs_bookmark_phys_t bm;
		int error;
		char *shortname;

		error = FUNC4(dp, fullname, &ds,
		    FTAG, &shortname);
		if (error == ENOENT) {
			/* ignore it; the bookmark is "already destroyed" */
			continue;
		}
		if (error == 0) {
			error = FUNC5(ds, shortname, &bm);
			FUNC6(ds, FTAG);
			if (error == ESRCH) {
				/*
				 * ignore it; the bookmark is
				 * "already destroyed"
				 */
				continue;
			}
			if (error == 0 && bm.zbm_redaction_obj != 0) {
				redaction_list_t *rl = NULL;
				error = FUNC7(tx->tx_pool,
				    bm.zbm_redaction_obj, FTAG, &rl);
				if (error == ENOENT) {
					error = 0;
				} else if (error == 0 &&
				    FUNC8(rl)) {
					error = FUNC1(EBUSY);
				}
				if (rl != NULL) {
					FUNC9(rl, FTAG);
				}
			}
		}
		if (error == 0) {
			if (FUNC2(tx)) {
				FUNC10(dbda->dbda_success,
				    fullname);
			}
		} else {
			FUNC11(dbda->dbda_errors, fullname, error);
			rv = error;
		}
	}
	return (rv);
}