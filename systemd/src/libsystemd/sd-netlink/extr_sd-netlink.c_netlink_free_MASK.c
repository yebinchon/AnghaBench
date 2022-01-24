#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_2__* floating; } ;
typedef  TYPE_1__ sd_netlink_slot ;
struct TYPE_10__ {unsigned int rqueue_size; unsigned int rqueue_partial_size; int /*<<< orphan*/  fd; int /*<<< orphan*/  nlmsg_type_to_genl_family; int /*<<< orphan*/  genl_family_to_nlmsg_type; int /*<<< orphan*/  broadcast_group_refs; int /*<<< orphan*/  event; int /*<<< orphan*/  time_event_source; int /*<<< orphan*/  io_event_source; int /*<<< orphan*/  reply_callbacks_prioq; int /*<<< orphan*/  reply_callbacks; TYPE_1__* slots; int /*<<< orphan*/ * rbuffer; int /*<<< orphan*/ * rqueue_partial; int /*<<< orphan*/ * rqueue; } ;
typedef  TYPE_2__ sd_netlink ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static sd_netlink *FUNC10(sd_netlink *rtnl) {
        sd_netlink_slot *s;
        unsigned i;

        FUNC0(rtnl);

        for (i = 0; i < rtnl->rqueue_size; i++)
                FUNC9(rtnl->rqueue[i]);
        FUNC1(rtnl->rqueue);

        for (i = 0; i < rtnl->rqueue_partial_size; i++)
                FUNC9(rtnl->rqueue_partial[i]);
        FUNC1(rtnl->rqueue_partial);

        FUNC1(rtnl->rbuffer);

        while ((s = rtnl->slots)) {
                FUNC0(s->floating);
                FUNC4(s, true);
        }
        FUNC2(rtnl->reply_callbacks);
        FUNC5(rtnl->reply_callbacks_prioq);

        FUNC7(rtnl->io_event_source);
        FUNC7(rtnl->time_event_source);
        FUNC8(rtnl->event);

        FUNC2(rtnl->broadcast_group_refs);

        FUNC2(rtnl->genl_family_to_nlmsg_type);
        FUNC2(rtnl->nlmsg_type_to_genl_family);

        FUNC6(rtnl->fd);
        return FUNC3(rtnl);
}