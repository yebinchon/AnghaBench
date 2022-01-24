#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {TYPE_1__* network; int /*<<< orphan*/  state; int /*<<< orphan*/  dhcp_server; int /*<<< orphan*/  bssid; int /*<<< orphan*/  ssid; int /*<<< orphan*/  wlan_iftype; int /*<<< orphan*/  mac; int /*<<< orphan*/  ifname; int /*<<< orphan*/  sd_device; int /*<<< orphan*/  manager; } ;
struct TYPE_23__ {int /*<<< orphan*/  filename; scalar_t__ unmanaged; } ;
typedef  TYPE_1__ Network ;
typedef  TYPE_2__ Link ;

/* Variables and functions */
 int ENOENT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINK_STATE_INITIALIZED ; 
 int /*<<< orphan*/  LINK_STATE_LINGER ; 
 int /*<<< orphan*/  LINK_STATE_PENDING ; 
 int /*<<< orphan*/  LINK_STATE_UNMANAGED ; 
 int FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (TYPE_2__*) ; 
 int FUNC4 (TYPE_2__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC16 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__**) ; 
 TYPE_1__* FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

int FUNC20(Link *link, bool force) {
        Network *network;
        int r;

        if (FUNC0(link->state, LINK_STATE_PENDING, LINK_STATE_LINGER))
                return 0;

        r = FUNC17(link->manager, link->sd_device, link->ifname,
                        &link->mac, link->wlan_iftype, link->ssid, &link->bssid, &network);
        if (r == -ENOENT) {
                FUNC7(link);
                return 0;
        } else if (r == 0 && network->unmanaged) {
                FUNC7(link);
                return 0;
        } else if (r < 0)
                return r;

        if (link->network == network && !force)
                return 0;

        FUNC15(link, "Re-configuring with %s", network->filename);

        /* Dropping old .network file */
        r = FUNC13(link, false);
        if (r < 0) {
                FUNC6(link);
                return r;
        }

        if (FUNC3(link))
                (void) FUNC19(link->dhcp_server);

        r = FUNC4(link);
        if (r < 0)
                return r;

        if (!FUNC0(link->state, LINK_STATE_UNMANAGED, LINK_STATE_PENDING)) {
                FUNC14(link, "State is %s, dropping config", FUNC12(link->state));
                r = FUNC5(link);
                if (r < 0)
                        return r;
        }

        FUNC8(link);
        FUNC9(link);
        link->network = FUNC18(link->network);

        /* Then, apply new .network file */
        r = FUNC16(network, link);
        if (r < 0)
                return r;

        r = FUNC10(link);
        if (r < 0)
                return r;

        FUNC11(link, LINK_STATE_INITIALIZED);

        /* link_configure_duid() returns 0 if it requests product UUID. In that case,
         * link_configure() is called later asynchronously. */
        r = FUNC2(link);
        if (r <= 0)
                return r;

        r = FUNC1(link);
        if (r < 0)
                return r;

        return 0;
}