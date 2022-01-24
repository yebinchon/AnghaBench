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
typedef  scalar_t__ UnitActiveState ;
struct TYPE_5__ {scalar_t__ type; int in_audit; int /*<<< orphan*/  manager; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_SERVICE_START ; 
 int /*<<< orphan*/  AUDIT_SERVICE_STOP ; 
 scalar_t__ UNIT_INACTIVE ; 
 scalar_t__ UNIT_SERVICE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(Unit *u, UnitActiveState state) {
        FUNC0(u);

        if (u->type != UNIT_SERVICE)
                return;

        if (u->in_audit) {
                /* Write audit record if we have just finished shutting down */
                FUNC1(u->manager, u, AUDIT_SERVICE_STOP, state == UNIT_INACTIVE);
                u->in_audit = false;
        } else {
                /* Hmm, if there was no start record written write it now, so that we always have a nice pair */
                FUNC1(u->manager, u, AUDIT_SERVICE_START, state == UNIT_INACTIVE);

                if (state == UNIT_INACTIVE)
                        FUNC1(u->manager, u, AUDIT_SERVICE_STOP, true);
        }
}