#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  state; int /*<<< orphan*/  dhcp_server; scalar_t__ setting_mtu; TYPE_1__* network; } ;
struct TYPE_12__ {scalar_t__ ignore_carrier_loss; } ;
typedef  TYPE_2__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINK_STATE_PENDING ; 
 int /*<<< orphan*/  LINK_STATE_UNMANAGED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(Link *link) {
        int r;

        FUNC1(link);

        if (link->network && link->network->ignore_carrier_loss)
                return 0;

        /* Some devices reset itself while setting the MTU. This causes the DHCP client fall into a loop.
         * setting_mtu keep track whether the device got reset because of setting MTU and does not drop the
         * configuration and stop the clients as well. */
        if (link->setting_mtu)
                return 0;

        r = FUNC8(link, false);
        if (r < 0) {
                FUNC5(link);
                return r;
        }

        if (FUNC2(link))
                (void) FUNC10(link->dhcp_server);

        r = FUNC3(link);
        if (r < 0)
                return r;

        if (!FUNC0(link->state, LINK_STATE_UNMANAGED, LINK_STATE_PENDING)) {
                FUNC9(link, "State is %s, dropping config", FUNC7(link->state));
                r = FUNC4(link);
                if (r < 0)
                        return r;
        }

        r = FUNC6(link);
        if (r < 0)
                return r;

        return 0;
}