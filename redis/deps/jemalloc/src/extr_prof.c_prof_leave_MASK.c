#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tsd_t ;
struct TYPE_4__ {int enq; int enq_idump; int enq_gdump; } ;
typedef  TYPE_1__ prof_tdata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  bt2gctx_mtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  config_prof ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(tsd_t *tsd, prof_tdata_t *tdata) {
	FUNC1(config_prof);
	FUNC0(tdata == FUNC5(tsd, false));

	FUNC2(FUNC6(tsd), &bt2gctx_mtx);

	if (tdata != NULL) {
		bool idump, gdump;

		FUNC0(tdata->enq);
		tdata->enq = false;
		idump = tdata->enq_idump;
		tdata->enq_idump = false;
		gdump = tdata->enq_gdump;
		tdata->enq_gdump = false;

		if (idump) {
			FUNC4(FUNC6(tsd));
		}
		if (gdump) {
			FUNC3(FUNC6(tsd));
		}
	}
}