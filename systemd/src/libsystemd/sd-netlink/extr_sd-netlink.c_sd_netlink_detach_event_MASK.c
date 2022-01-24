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
struct TYPE_6__ {struct TYPE_6__* event; void* time_event_source; void* io_event_source; } ;
typedef  TYPE_1__ sd_netlink ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (void*) ; 
 TYPE_1__* FUNC2 (TYPE_1__*) ; 

int FUNC3(sd_netlink *rtnl) {
        FUNC0(rtnl, -EINVAL);
        FUNC0(rtnl->event, -ENXIO);

        rtnl->io_event_source = FUNC1(rtnl->io_event_source);

        rtnl->time_event_source = FUNC1(rtnl->time_event_source);

        rtnl->event = FUNC2(rtnl->event);

        return 0;
}