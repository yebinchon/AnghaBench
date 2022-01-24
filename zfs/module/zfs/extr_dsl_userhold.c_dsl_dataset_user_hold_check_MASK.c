#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
struct TYPE_5__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_1__ dsl_pool_t ;
struct TYPE_6__ {scalar_t__ dduha_minor; int /*<<< orphan*/  dduha_errlist; int /*<<< orphan*/ * dduha_chkholds; int /*<<< orphan*/ * dduha_holds; } ;
typedef  TYPE_2__ dsl_dataset_user_hold_arg_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  dmu_tx_t ;

/* Variables and functions */
 int /*<<< orphan*/  EEXIST ; 
 int /*<<< orphan*/  EINVAL ; 
 int ENOENT ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FTAG ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPA_VERSION_USERREFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 size_t FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,size_t) ; 
 char* FUNC13 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC19 (char*,char) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*) ; 
 size_t FUNC21 (char*) ; 

__attribute__((used)) static int
FUNC22(void *arg, dmu_tx_t *tx)
{
	dsl_dataset_user_hold_arg_t *dduha = arg;
	dsl_pool_t *dp = FUNC2(tx);
	nvlist_t *tmp_holds;

	if (FUNC17(dp->dp_spa) < SPA_VERSION_USERREFS)
		return (FUNC0(ENOTSUP));

	if (!FUNC1(tx))
		return (0);

	/*
	 * Ensure the list has no duplicates by copying name/values from
	 * non-unique dduha_holds to unique tmp_holds, and comparing counts.
	 */
	tmp_holds = FUNC8();
	for (nvpair_t *pair = FUNC14(dduha->dduha_holds, NULL);
	    pair != NULL; pair = FUNC14(dduha->dduha_holds, pair)) {
		size_t len = FUNC21(FUNC15(pair)) +
		    FUNC21(FUNC11(pair));
		char *nameval = FUNC13(len + 2, KM_SLEEP);
		(void) FUNC20(nameval, FUNC15(pair));
		(void) FUNC18(nameval, "@");
		(void) FUNC18(nameval, FUNC11(pair));
		FUNC7(tmp_holds, nameval, "");
		FUNC12(nameval, len + 2);
	}
	size_t tmp_count = FUNC10(tmp_holds);
	FUNC9(tmp_holds);
	if (tmp_count != FUNC10(dduha->dduha_holds))
		return (FUNC0(EEXIST));
	for (nvpair_t *pair = FUNC14(dduha->dduha_holds, NULL);
	    pair != NULL; pair = FUNC14(dduha->dduha_holds, pair)) {
		dsl_dataset_t *ds;
		int error = 0;
		char *htag, *name;

		/* must be a snapshot */
		name = FUNC15(pair);
		if (FUNC19(name, '@') == NULL)
			error = FUNC0(EINVAL);

		if (error == 0)
			error = FUNC16(pair, &htag);

		if (error == 0)
			error = FUNC3(dp, name, FTAG, &ds);

		if (error == 0) {
			error = FUNC5(ds, htag,
			    dduha->dduha_minor != 0, tx);
			FUNC4(ds, FTAG);
		}

		if (error == 0) {
			FUNC7(dduha->dduha_chkholds, name, htag);
		} else {
			/*
			 * We register ENOENT errors so they can be correctly
			 * reported if needed, such as when all holds fail.
			 */
			FUNC6(dduha->dduha_errlist, name, error);
			if (error != ENOENT)
				return (error);
		}
	}

	return (0);
}