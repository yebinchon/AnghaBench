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
typedef  int /*<<< orphan*/  dsl_pool_t ;
typedef  int /*<<< orphan*/  dsl_dataset_t ;
typedef  int /*<<< orphan*/  cred_t ;

/* Variables and functions */
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC5(const char *dsname, const char *perm, cred_t *cr)
{
	dsl_pool_t *dp;
	dsl_dataset_t *ds;
	int error;

	error = FUNC3(dsname, FTAG, &dp);
	if (error != 0)
		return (error);
	error = FUNC0(dp, dsname, FTAG, &ds);
	if (error == 0) {
		error = FUNC2(ds, perm, cr);
		FUNC1(ds, FTAG);
	}
	FUNC4(dp, FTAG);

	return (error);
}