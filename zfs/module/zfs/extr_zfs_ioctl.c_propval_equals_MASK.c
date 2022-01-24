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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  nvpair_t ;
typedef  int /*<<< orphan*/  nvlist_t ;
typedef  int boolean_t ;

/* Variables and functions */
 int B_FALSE ; 
 scalar_t__ DATA_TYPE_NVLIST ; 
 scalar_t__ DATA_TYPE_STRING ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  ZPROP_VALUE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

__attribute__((used)) static boolean_t
FUNC7(nvpair_t *p1, nvpair_t *p2)
{
	if (FUNC2(p1) == DATA_TYPE_NVLIST) {
		/* dsl_prop_get_all_impl() format */
		nvlist_t *attrs;
		FUNC0(FUNC3(p1, &attrs) == 0);
		FUNC0(FUNC1(attrs, ZPROP_VALUE,
		    &p1) == 0);
	}

	if (FUNC2(p2) == DATA_TYPE_NVLIST) {
		nvlist_t *attrs;
		FUNC0(FUNC3(p2, &attrs) == 0);
		FUNC0(FUNC1(attrs, ZPROP_VALUE,
		    &p2) == 0);
	}

	if (FUNC2(p1) != FUNC2(p2))
		return (B_FALSE);

	if (FUNC2(p1) == DATA_TYPE_STRING) {
		char *valstr1, *valstr2;

		FUNC0(FUNC4(p1, (char **)&valstr1) == 0);
		FUNC0(FUNC4(p2, (char **)&valstr2) == 0);
		return (FUNC6(valstr1, valstr2) == 0);
	} else {
		uint64_t intval1, intval2;

		FUNC0(FUNC5(p1, &intval1) == 0);
		FUNC0(FUNC5(p2, &intval2) == 0);
		return (intval1 == intval2);
	}
}