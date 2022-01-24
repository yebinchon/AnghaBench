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
struct TYPE_4__ {int /*<<< orphan*/  manager; } ;
typedef  TYPE_1__ Unit ;

/* Variables and functions */
 int /*<<< orphan*/  ANSI_HIGHLIGHT ; 
 int /*<<< orphan*/  ANSI_NORMAL ; 
 int /*<<< orphan*/  DISABLE_WARNING_FORMAT_NONLITERAL ; 
 int /*<<< orphan*/  REENABLE_WARNING ; 
 int /*<<< orphan*/  STATUS_TYPE_NORMAL ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,char const*,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (TYPE_1__*) ; 

void FUNC4(Unit *u, const char *status, const char *unit_status_msg_format) {
        const char *d;

        d = FUNC3(u);
        if (FUNC0())
                d = FUNC2(ANSI_HIGHLIGHT, d, ANSI_NORMAL);

        DISABLE_WARNING_FORMAT_NONLITERAL;
        FUNC1(u->manager, STATUS_TYPE_NORMAL, status, unit_status_msg_format, d);
        REENABLE_WARNING;
}