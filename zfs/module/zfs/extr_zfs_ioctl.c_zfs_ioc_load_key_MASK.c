#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_crypto_params_t ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  B_TRUE ; 
 int /*<<< orphan*/  DCP_CMD_NONE ; 
 int /*<<< orphan*/  EINVAL ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZPOOL_HIDDEN_ARGS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char) ; 

__attribute__((used)) static int
FUNC7(const char *dsname, nvlist_t *innvl, nvlist_t *outnvl)
{
	int ret;
	dsl_crypto_params_t *dcp = NULL;
	nvlist_t *hidden_args;
	boolean_t noop = FUNC4(innvl, "noop");

	if (FUNC6(dsname, '@') != NULL || FUNC6(dsname, '%') != NULL) {
		ret = FUNC0(EINVAL);
		goto error;
	}

	hidden_args = FUNC3(innvl, ZPOOL_HIDDEN_ARGS);

	ret = FUNC1(DCP_CMD_NONE, NULL,
	    hidden_args, &dcp);
	if (ret != 0)
		goto error;

	ret = FUNC5(dsname, dcp, noop);
	if (ret != 0)
		goto error;

	FUNC2(dcp, noop);

	return (0);

error:
	FUNC2(dcp, B_TRUE);
	return (ret);
}