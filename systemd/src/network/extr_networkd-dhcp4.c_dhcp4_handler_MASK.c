#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_dhcp_client ;
struct TYPE_15__ {int /*<<< orphan*/  keep_configuration; struct TYPE_15__* network; int /*<<< orphan*/  dhcp_lease; int /*<<< orphan*/  dhcp_send_release; struct TYPE_15__* ipv4ll; int /*<<< orphan*/  state; struct TYPE_15__* manager; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 int /*<<< orphan*/  ADDRESS_FAMILY_FALLBACK_IPV4 ; 
 int ENOMSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KEEP_CONFIGURATION_DHCP ; 
 int /*<<< orphan*/  LINK_STATE_FAILED ; 
 int /*<<< orphan*/  LINK_STATE_LINGER ; 
#define  SD_DHCP_CLIENT_EVENT_EXPIRED 133 
#define  SD_DHCP_CLIENT_EVENT_IP_ACQUIRE 132 
#define  SD_DHCP_CLIENT_EVENT_IP_CHANGE 131 
#define  SD_DHCP_CLIENT_EVENT_RENEW 130 
#define  SD_DHCP_CLIENT_EVENT_SELECTING 129 
#define  SD_DHCP_CLIENT_EVENT_STOP 128 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*,int) ; 
 int FUNC13 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC16(sd_dhcp_client *client, int event, void *userdata) {
        Link *link = userdata;
        int r;

        FUNC2(link);
        FUNC2(link->network);
        FUNC2(link->manager);

        if (FUNC1(link->state, LINK_STATE_FAILED, LINK_STATE_LINGER))
                return 0;

        switch (event) {
                case SD_DHCP_CLIENT_EVENT_STOP:

                        if (FUNC9(link, ADDRESS_FAMILY_FALLBACK_IPV4)) {
                                FUNC2(link->ipv4ll);

                                FUNC10(link, "DHCP client is stopped. Acquiring IPv4 link-local address");

                                r = FUNC15(link->ipv4ll);
                                if (r < 0)
                                        return FUNC13(link, r, "Could not acquire IPv4 link-local address: %m");
                        }

                        if (FUNC0(link->network->keep_configuration, KEEP_CONFIGURATION_DHCP)) {
                                FUNC11(link, "DHCPv4 connection considered critical, ignoring request to reconfigure it.");
                                return 0;
                        }

                        if (link->dhcp_lease) {
                                if (link->network->dhcp_send_release)
                                        (void) FUNC14(client);

                                r = FUNC5(link);
                                if (r < 0) {
                                        FUNC8(link);
                                        return r;
                                }
                        }

                        break;
                case SD_DHCP_CLIENT_EVENT_EXPIRED:
                        if (FUNC0(link->network->keep_configuration, KEEP_CONFIGURATION_DHCP)) {
                                FUNC11(link, "DHCPv4 connection considered critical, ignoring request to reconfigure it.");
                                return 0;
                        }

                        if (link->dhcp_lease) {
                                r = FUNC5(link);
                                if (r < 0) {
                                        FUNC8(link);
                                        return r;
                                }
                        }

                        break;
                case SD_DHCP_CLIENT_EVENT_IP_CHANGE:
                        if (FUNC0(link->network->keep_configuration, KEEP_CONFIGURATION_DHCP)) {
                                FUNC11(link, "DHCPv4 connection considered critical, ignoring request to reconfigure it.");
                                return 0;
                        }

                        r = FUNC4(client, link);
                        if (r < 0) {
                                FUNC8(link);
                                return r;
                        }

                        break;
                case SD_DHCP_CLIENT_EVENT_RENEW:
                        r = FUNC6(client, link);
                        if (r < 0) {
                                FUNC8(link);
                                return r;
                        }
                        break;
                case SD_DHCP_CLIENT_EVENT_IP_ACQUIRE:
                        r = FUNC3(client, link);
                        if (r < 0) {
                                FUNC8(link);
                                return r;
                        }
                        break;
                case SD_DHCP_CLIENT_EVENT_SELECTING:
                        r = FUNC7(link, client);
                        if (r < 0)
                                return r;
                        if (r != 0)
                                return -ENOMSG;
                        break;
                default:
                        if (event < 0)
                                FUNC13(link, event, "DHCP error: Client failed: %m");
                        else
                                FUNC12(link, "DHCP unknown event: %i", event);
                        break;
        }

        return 0;
}