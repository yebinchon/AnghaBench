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
struct TYPE_4__ {int /*<<< orphan*/  event; int /*<<< orphan*/  rtnl; int /*<<< orphan*/  rtnl_event_source; int /*<<< orphan*/  network_monitor; int /*<<< orphan*/  network_monitor_event_source; int /*<<< orphan*/  links_by_name; int /*<<< orphan*/  links; } ;
typedef  TYPE_1__ Manager ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link_free ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(Manager *m) {
        if (!m)
                return;

        FUNC2(m->links, link_free);
        FUNC1(m->links_by_name);

        FUNC3(m->network_monitor_event_source);
        FUNC6(m->network_monitor);

        FUNC3(m->rtnl_event_source);
        FUNC5(m->rtnl);

        FUNC4(m->event);
        FUNC0(m);

        return;
}