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
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  u_longlong_t ;
typedef  int /*<<< orphan*/  objset_t ;
struct TYPE_3__ {size_t doi_max_offset; } ;
typedef  TYPE_1__ dmu_object_info_t ;

/* Variables and functions */
 int /*<<< orphan*/  KM_SLEEP ; 
 size_t FUNC0 (size_t,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,size_t,size_t*,int /*<<< orphan*/ ) ; 
 int* dump_opt ; 
 size_t* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void
FUNC7(objset_t *os, uint64_t object, void *data, size_t size)
{
	uint64_t *arr;
	uint64_t oursize;
	if (dump_opt['d'] < 6)
		return;

	if (data == NULL) {
		dmu_object_info_t doi;

		FUNC1(FUNC2(os, object, &doi));
		size = doi.doi_max_offset;
		/*
		 * We cap the size at 1 mebibyte here to prevent
		 * allocation failures and nigh-infinite printing if the
		 * object is extremely large.
		 */
		oursize = FUNC0(size, 1 << 20);
		arr = FUNC4(oursize, KM_SLEEP);

		int err = FUNC3(os, object, 0, oursize, arr, 0);
		if (err != 0) {
			(void) FUNC6("got error %u from dmu_read\n", err);
			FUNC5(arr, oursize);
			return;
		}
	} else {
		/*
		 * Even though the allocation is already done in this code path,
		 * we still cap the size to prevent excessive printing.
		 */
		oursize = FUNC0(size, 1 << 20);
		arr = data;
	}

	if (size == 0) {
		(void) FUNC6("\t\t[]\n");
		return;
	}

	(void) FUNC6("\t\t[%0llx", (u_longlong_t)arr[0]);
	for (size_t i = 1; i * sizeof (uint64_t) < oursize; i++) {
		if (i % 4 != 0)
			(void) FUNC6(", %0llx", (u_longlong_t)arr[i]);
		else
			(void) FUNC6(",\n\t\t%0llx", (u_longlong_t)arr[i]);
	}
	if (oursize != size)
		(void) FUNC6(", ... ");
	(void) FUNC6("]\n");

	if (data == NULL)
		FUNC5(arr, oursize);
}