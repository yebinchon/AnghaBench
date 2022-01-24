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
struct TYPE_6__ {int floating; int /*<<< orphan*/  netlink; } ;
typedef  TYPE_1__ sd_netlink_slot ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int ESTALE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(sd_netlink_slot *slot, int b) {
        FUNC0(slot, -EINVAL);

        if (slot->floating == !!b)
                return 0;

        if (!slot->netlink) /* Already disconnected */
                return -ESTALE;

        slot->floating = b;

        if (b) {
                FUNC2(slot);
                FUNC4(slot->netlink);
        } else {
                FUNC1(slot->netlink);
                FUNC3(slot);
        }

        return 1;
}