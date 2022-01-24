#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int /*<<< orphan*/  dsl_pool_t ;
struct TYPE_6__ {int /*<<< orphan*/  ds_is_snapshot; } ;
typedef  TYPE_1__ dsl_dataset_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FTAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static int
FUNC8(const char *lastsnap, nvlist_t *innvl, nvlist_t *outnvl)
{
	int error;
	dsl_pool_t *dp;
	dsl_dataset_t *new, *old;
	char *firstsnap;
	uint64_t used, comp, uncomp;

	firstsnap = FUNC7(innvl, "firstsnap");

	error = FUNC4(lastsnap, FTAG, &dp);
	if (error != 0)
		return (error);

	error = FUNC1(dp, lastsnap, FTAG, &new);
	if (error == 0 && !new->ds_is_snapshot) {
		FUNC2(new, FTAG);
		error = FUNC0(EINVAL);
	}
	if (error != 0) {
		FUNC5(dp, FTAG);
		return (error);
	}
	error = FUNC1(dp, firstsnap, FTAG, &old);
	if (error == 0 && !old->ds_is_snapshot) {
		FUNC2(old, FTAG);
		error = FUNC0(EINVAL);
	}
	if (error != 0) {
		FUNC2(new, FTAG);
		FUNC5(dp, FTAG);
		return (error);
	}

	error = FUNC3(old, new, &used, &comp, &uncomp);
	FUNC2(old, FTAG);
	FUNC2(new, FTAG);
	FUNC5(dp, FTAG);
	FUNC6(outnvl, "used", used);
	FUNC6(outnvl, "compressed", comp);
	FUNC6(outnvl, "uncompressed", uncomp);
	return (error);
}