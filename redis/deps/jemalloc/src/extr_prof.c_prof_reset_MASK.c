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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  prof_tdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t lg_prof_sample ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  prof_dump_mtx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  prof_tdata_reset_iter ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tdatas ; 
 int /*<<< orphan*/  tdatas_mtx ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(tsd_t *tsd, size_t lg_sample) {
	prof_tdata_t *next;

	FUNC0(lg_sample < (sizeof(uint64_t) << 3));

	FUNC1(FUNC6(tsd), &prof_dump_mtx);
	FUNC1(FUNC6(tsd), &tdatas_mtx);

	lg_prof_sample = lg_sample;

	next = NULL;
	do {
		prof_tdata_t *to_destroy = FUNC4(&tdatas, next,
		    prof_tdata_reset_iter, (void *)tsd);
		if (to_destroy != NULL) {
			next = FUNC5(&tdatas, to_destroy);
			FUNC3(tsd, to_destroy, false);
		} else {
			next = NULL;
		}
	} while (next != NULL);

	FUNC2(FUNC6(tsd), &tdatas_mtx);
	FUNC2(FUNC6(tsd), &prof_dump_mtx);
}