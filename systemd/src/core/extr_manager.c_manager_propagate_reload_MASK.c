#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/  Unit ;
struct TYPE_8__ {int /*<<< orphan*/  anchor_job; } ;
typedef  TYPE_1__ Transaction ;
typedef  int /*<<< orphan*/  Manager ;
typedef  int /*<<< orphan*/  JobMode ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  JOB_IGNORE_DEPENDENCIES ; 
 int /*<<< orphan*/  JOB_ISOLATE ; 
 int /*<<< orphan*/  JOB_NOP ; 
 int /*<<< orphan*/  JOB_REPLACE_IRREVERSIBLY ; 
 int /*<<< orphan*/  _JOB_MODE_MAX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int) ; 

int FUNC7(Manager *m, Unit *unit, JobMode mode, sd_bus_error *e) {
        int r;
        Transaction *tr;

        FUNC0(*m);
        FUNC0(*unit);
        FUNC0(mode < _JOB_MODE_MAX);
        FUNC0(mode != JOB_ISOLATE); /* Isolate is only valid for start */

        tr = FUNC6(mode == JOB_REPLACE_IRREVERSIBLY);
        if (!tr)
                return -ENOMEM;

        /* We need an anchor job */
        r = FUNC3(tr, JOB_NOP, unit, NULL, false, false, true, true, e);
        if (r < 0)
                goto tr_abort;

        /* Failure in adding individual dependencies is ignored, so this always succeeds. */
        FUNC4(tr, unit, tr->anchor_job, mode == JOB_IGNORE_DEPENDENCIES, e);

        r = FUNC2(tr, m, mode, NULL, e);
        if (r < 0)
                goto tr_abort;

        FUNC5(tr);
        return 0;

tr_abort:
        FUNC1(tr);
        FUNC5(tr);
        return r;
}