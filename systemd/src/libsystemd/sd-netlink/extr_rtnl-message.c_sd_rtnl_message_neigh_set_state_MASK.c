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
typedef  int /*<<< orphan*/  uint16_t ;
struct ndmsg {int /*<<< orphan*/  ndm_state; } ;
struct TYPE_6__ {struct TYPE_6__* hdr; int /*<<< orphan*/  nlmsg_type; } ;
typedef  TYPE_1__ sd_netlink_message ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct ndmsg* FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

int FUNC3(sd_netlink_message *m, uint16_t state) {
        struct ndmsg *ndm;

        FUNC1(m, -EINVAL);
        FUNC1(m->hdr, -EINVAL);
        FUNC1(FUNC2(m->hdr->nlmsg_type), -EINVAL);

        ndm = FUNC0(m->hdr);
        ndm->ndm_state |= state;

        return 0;
}