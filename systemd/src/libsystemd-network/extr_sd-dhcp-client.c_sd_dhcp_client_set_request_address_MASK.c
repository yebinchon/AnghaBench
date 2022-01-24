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
struct in_addr {int /*<<< orphan*/  s_addr; } ;
struct TYPE_5__ {int /*<<< orphan*/  last_addr; int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ sd_dhcp_client ;

/* Variables and functions */
 int /*<<< orphan*/  DHCP_STATE_INIT ; 
 int /*<<< orphan*/  DHCP_STATE_STOPPED ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC2(
                sd_dhcp_client *client,
                const struct in_addr *last_addr) {

        FUNC1(client, -EINVAL);
        FUNC1(FUNC0(client->state, DHCP_STATE_INIT, DHCP_STATE_STOPPED), -EBUSY);

        if (last_addr)
                client->last_addr = last_addr->s_addr;
        else
                client->last_addr = INADDR_ANY;

        return 0;
}