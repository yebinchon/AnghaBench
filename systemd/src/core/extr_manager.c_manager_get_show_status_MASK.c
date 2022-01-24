#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  show_status; scalar_t__ no_console_output; } ;
typedef  scalar_t__ StatusType ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  MANAGER_INITIALIZING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  MANAGER_STARTING ; 
 int /*<<< orphan*/  MANAGER_STOPPING ; 
 int /*<<< orphan*/  SHOW_STATUS_TEMPORARY ; 
 int /*<<< orphan*/  SHOW_STATUS_YES ; 
 scalar_t__ STATUS_TYPE_EMERGENCY ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static bool FUNC5(Manager *m, StatusType type) {
        FUNC2(m);

        if (!FUNC1(m))
                return false;

        if (m->no_console_output)
                return false;

        if (!FUNC0(FUNC4(m), MANAGER_INITIALIZING, MANAGER_STARTING, MANAGER_STOPPING))
                return false;

        /* If we cannot find out the status properly, just proceed. */
        if (type != STATUS_TYPE_EMERGENCY && FUNC3(m) > 0)
                return false;

        return FUNC0(m->show_status, SHOW_STATUS_TEMPORARY, SHOW_STATUS_YES);
}