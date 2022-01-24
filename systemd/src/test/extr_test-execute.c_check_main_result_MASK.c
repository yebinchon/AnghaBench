#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ Unit ;
struct TYPE_14__ {int code; int status; } ;
struct TYPE_13__ {TYPE_6__ main_exec_status; } ;
typedef  TYPE_2__ Service ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 TYPE_2__* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(const char *func, Manager *m, Unit *unit, int status_expected, int code_expected) {
        Service *service = NULL;

        FUNC2(m);
        FUNC2(unit);

        FUNC6(m, unit);

        service = FUNC0(unit);
        FUNC4(&service->main_exec_status, stdout, "\t");

        if (FUNC3(service->main_exec_status.code) != FUNC3(code_expected)) {
                FUNC5("%s: %s: exit code %d, expected %d",
                          func, unit->id,
                          service->main_exec_status.code, code_expected);
                FUNC1();
        }

        if (service->main_exec_status.status != status_expected) {
                FUNC5("%s: %s: exit status %d, expected %d",
                          func, unit->id,
                          service->main_exec_status.status, status_expected);
                FUNC1();
        }
}