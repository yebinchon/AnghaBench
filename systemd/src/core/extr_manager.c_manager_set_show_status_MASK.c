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
struct TYPE_6__ {scalar_t__ show_status; } ;
typedef  scalar_t__ ShowStatus ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 TYPE_1__* FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  SHOW_STATUS_AUTO ; 
 scalar_t__ SHOW_STATUS_NO ; 
 int /*<<< orphan*/  SHOW_STATUS_TEMPORARY ; 
 int /*<<< orphan*/  SHOW_STATUS_YES ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(Manager *m, ShowStatus mode) {
        FUNC2(m);
        FUNC2(FUNC0(mode, SHOW_STATUS_AUTO, SHOW_STATUS_NO, SHOW_STATUS_YES, SHOW_STATUS_TEMPORARY));

        if (!FUNC1(m))
                return;

        if (m->show_status != mode)
                FUNC3("%s showing of status.",
                          mode == SHOW_STATUS_NO ? "Disabling" : "Enabling");
        m->show_status = mode;

        if (FUNC0(mode, SHOW_STATUS_TEMPORARY, SHOW_STATUS_YES))
                (void) FUNC4("/run/systemd/show-status");
        else
                (void) FUNC5("/run/systemd/show-status");
}