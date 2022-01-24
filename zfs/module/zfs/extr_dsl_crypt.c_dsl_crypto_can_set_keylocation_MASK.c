#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_5__ {scalar_t__ dd_crypto_obj; scalar_t__ dd_object; } ;
typedef  TYPE_1__ dsl_dir_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_1__*,scalar_t__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_1__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ ) ; 

int
FUNC8(const char *dsname, const char *keylocation)
{
	int ret = 0;
	dsl_dir_t *dd = NULL;
	dsl_pool_t *dp = NULL;
	uint64_t rddobj;

	/* hold the dsl dir */
	ret = FUNC4(dsname, FTAG, &dp);
	if (ret != 0)
		goto out;

	ret = FUNC2(dp, dsname, FTAG, &dd, NULL);
	if (ret != 0) {
		dd = NULL;
		goto out;
	}

	/* if dd is not encrypted, the value may only be "none" */
	if (dd->dd_crypto_obj == 0) {
		if (FUNC6(keylocation, "none") != 0) {
			ret = FUNC0(EACCES);
			goto out;
		}

		ret = 0;
		goto out;
	}

	/* check for a valid keylocation for encrypted datasets */
	if (!FUNC7(keylocation, B_TRUE)) {
		ret = FUNC0(EINVAL);
		goto out;
	}

	/* check that this is an encryption root */
	ret = FUNC1(dd, &rddobj);
	if (ret != 0)
		goto out;

	if (rddobj != dd->dd_object) {
		ret = FUNC0(EACCES);
		goto out;
	}

	FUNC3(dd, FTAG);
	FUNC5(dp, FTAG);

	return (0);

out:
	if (dd != NULL)
		FUNC3(dd, FTAG);
	if (dp != NULL)
		FUNC5(dp, FTAG);

	return (ret);
}