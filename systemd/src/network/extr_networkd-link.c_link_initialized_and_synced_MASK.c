#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int flags; int /*<<< orphan*/  bssid; int /*<<< orphan*/  ssid; int /*<<< orphan*/  wlan_iftype; int /*<<< orphan*/  mac; struct TYPE_20__* ifname; int /*<<< orphan*/  sd_device; struct TYPE_20__* manager; int /*<<< orphan*/  network; int /*<<< orphan*/  state; } ;
struct TYPE_19__ {scalar_t__ link_local; scalar_t__ dhcp; scalar_t__ dhcp_server; scalar_t__ unmanaged; } ;
typedef  TYPE_1__ Network ;
typedef  TYPE_2__ Link ;

/* Variables and functions */
 scalar_t__ ADDRESS_FAMILY_NO ; 
 int ENOENT ; 
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINK_STATE_INITIALIZED ; 
 int /*<<< orphan*/  LINK_STATE_PENDING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,char*) ; 
 int FUNC10 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int FUNC12 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC13(Link *link) {
        Network *network;
        int r;

        FUNC1(link);
        FUNC1(link->ifname);
        FUNC1(link->manager);

        /* We may get called either from the asynchronous netlink callback,
         * or directly for link_add() if running in a container. See link_add(). */
        if (!FUNC0(link->state, LINK_STATE_PENDING, LINK_STATE_INITIALIZED))
                return 0;

        FUNC9(link, "Link state is up-to-date");
        FUNC8(link, LINK_STATE_INITIALIZED);

        r = FUNC6(link);
        if (r < 0)
                return r;

        r = FUNC5(link);
        if (r < 0)
                return r;

        if (!link->network) {
                r = FUNC12(link);
                if (r < 0)
                        return r;

                r = FUNC11(link->manager, link->sd_device, link->ifname,
                                &link->mac, link->wlan_iftype, link->ssid, &link->bssid, &network);
                if (r == -ENOENT) {
                        FUNC4(link);
                        return 0;
                } else if (r == 0 && network->unmanaged) {
                        FUNC4(link);
                        return 0;
                } else if (r < 0)
                        return r;

                if (link->flags & IFF_LOOPBACK) {
                        if (network->link_local != ADDRESS_FAMILY_NO)
                                FUNC9(link, "Ignoring link-local autoconfiguration for loopback link");

                        if (network->dhcp != ADDRESS_FAMILY_NO)
                                FUNC9(link, "Ignoring DHCP clients for loopback link");

                        if (network->dhcp_server)
                                FUNC9(link, "Ignoring DHCP server for loopback link");
                }

                r = FUNC10(network, link);
                if (r < 0)
                        return r;
        }

        r = FUNC7(link);
        if (r < 0)
                return r;

        /* link_configure_duid() returns 0 if it requests product UUID. In that case,
         * link_configure() is called later asynchronously. */
        r = FUNC3(link);
        if (r <= 0)
                return r;

        r = FUNC2(link);
        if (r < 0)
                return r;

        return 0;
}