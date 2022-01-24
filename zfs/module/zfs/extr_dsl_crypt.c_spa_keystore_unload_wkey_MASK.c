#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  spa_dsl_pool; } ;
typedef  TYPE_1__ spa_t ;
struct TYPE_13__ {int /*<<< orphan*/  dp_spa; } ;
typedef  TYPE_2__ dsl_pool_t ;
struct TYPE_14__ {int /*<<< orphan*/  dd_object; } ;
typedef  TYPE_3__ dsl_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  ENOTSUP ; 
 scalar_t__ FREAD ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPA_FEATURE_ENCRYPTION ; 
 int FUNC1 (TYPE_2__*,char const*,int /*<<< orphan*/ ,TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_1__*) ; 
 int FUNC9 (char const*,TYPE_1__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

int
FUNC12(const char *dsname)
{
	int ret = 0;
	dsl_dir_t *dd = NULL;
	dsl_pool_t *dp = NULL;
	spa_t *spa = NULL;

	ret = FUNC9(dsname, &spa, FTAG);
	if (ret != 0)
		return (ret);

	/*
	 * Wait for any outstanding txg IO to complete, releasing any
	 * remaining references on the wkey.
	 */
	if (FUNC8(spa) != FREAD)
		FUNC10(spa->spa_dsl_pool, 0);

	FUNC5(spa, FTAG);

	/* hold the dsl dir */
	ret = FUNC3(dsname, FTAG, &dp);
	if (ret != 0)
		goto error;

	if (!FUNC6(dp->dp_spa, SPA_FEATURE_ENCRYPTION)) {
		ret = (FUNC0(ENOTSUP));
		goto error;
	}

	ret = FUNC1(dp, dsname, FTAG, &dd, NULL);
	if (ret != 0) {
		dd = NULL;
		goto error;
	}

	/* unload the wkey */
	ret = FUNC7(dp->dp_spa, dd->dd_object);
	if (ret != 0)
		goto error;

	FUNC2(dd, FTAG);
	FUNC4(dp, FTAG);

	/* remove any zvols under this ds */
	FUNC11(dp->dp_spa, dsname, B_TRUE);

	return (0);

error:
	if (dd != NULL)
		FUNC2(dd, FTAG);
	if (dp != NULL)
		FUNC4(dp, FTAG);

	return (ret);
}