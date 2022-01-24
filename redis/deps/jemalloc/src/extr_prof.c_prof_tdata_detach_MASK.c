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
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_5__ {int attached; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ prof_tdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC6(tsd_t *tsd, prof_tdata_t *tdata) {
	bool destroy_tdata;

	FUNC0(FUNC5(tsd), tdata->lock);
	if (tdata->attached) {
		destroy_tdata = FUNC3(FUNC5(tsd), tdata,
		    true);
		/*
		 * Only detach if !destroy_tdata, because detaching would allow
		 * another thread to win the race to destroy tdata.
		 */
		if (!destroy_tdata) {
			tdata->attached = false;
		}
		FUNC4(tsd, NULL);
	} else {
		destroy_tdata = false;
	}
	FUNC1(FUNC5(tsd), tdata->lock);
	if (destroy_tdata) {
		FUNC2(tsd, tdata, true);
	}
}