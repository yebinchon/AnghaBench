#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct sortslot {int /*<<< orphan*/  v; TYPE_1__* J; } ;
struct TYPE_17__ {int /*<<< orphan*/  gcpause; } ;
typedef  TYPE_1__ js_State ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,struct sortslot*) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 struct sortslot* FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_1__*,int) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (struct sortslot*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sortcmp ; 

__attribute__((used)) static void FUNC15(js_State *J)
{
	struct sortslot *array = NULL;
	int i, n, len;

	len = FUNC4(J, 0);
	if (len <= 0) {
		FUNC0(J, 0);
		return;
	}

	if (len >= INT_MAX / (int)sizeof(*array))
		FUNC9(J, "array is too large to sort");

	array = FUNC6(J, len * sizeof *array);

	/* Holding objects where the GC cannot see them is illegal, but if we
	 * don't allow the GC to run we can use qsort() on a temporary array of
	 * js_Values for fast sorting.
	 */
	++J->gcpause;

	if (FUNC13(J)) {
		--J->gcpause;
		FUNC3(J, array);
		FUNC11(J);
	}

	n = 0;
	for (i = 0; i < len; ++i) {
		if (FUNC5(J, 0, i)) {
			array[n].v = *FUNC12(J, -1);
			array[n].J = J;
			FUNC7(J, 1);
			++n;
		}
	}

	FUNC14(array, n, sizeof *array, sortcmp);

	for (i = 0; i < n; ++i) {
		FUNC8(J, array[i].v);
		FUNC10(J, 0, i);
	}
	for (i = n; i < len; ++i) {
		FUNC1(J, 0, i);
	}

	--J->gcpause;

	FUNC2(J);
	FUNC3(J, array);

	FUNC0(J, 0);
}