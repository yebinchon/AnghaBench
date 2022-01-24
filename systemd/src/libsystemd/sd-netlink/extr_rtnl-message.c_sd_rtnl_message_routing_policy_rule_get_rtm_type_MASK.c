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
struct rtmsg {unsigned char rtm_type; } ;
struct TYPE_6__ {struct TYPE_6__ const* hdr; int /*<<< orphan*/  nlmsg_type; } ;
typedef  TYPE_1__ sd_netlink_message ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct rtmsg* FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 TYPE_1__ const* FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(const sd_netlink_message *m, unsigned char *type) {
        struct rtmsg *routing_policy_rule;

        FUNC1(m, -EINVAL);
        FUNC1(m->hdr, -EINVAL);
        FUNC1(FUNC2(m->hdr->nlmsg_type), -EINVAL);

        routing_policy_rule = FUNC0(m->hdr);

        *type =  routing_policy_rule->rtm_type;

        return 0;
}