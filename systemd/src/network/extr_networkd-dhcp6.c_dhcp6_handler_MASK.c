#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  sd_dhcp6_client ;
struct TYPE_14__ {int dhcp6_configured; int /*<<< orphan*/  manager; int /*<<< orphan*/  state; struct TYPE_14__* network; } ;
typedef  TYPE_1__ Link ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LINK_STATE_FAILED ; 
 int /*<<< orphan*/  LINK_STATE_LINGER ; 
#define  SD_DHCP6_CLIENT_EVENT_INFORMATION_REQUEST 132 
#define  SD_DHCP6_CLIENT_EVENT_IP_ACQUIRE 131 
#define  SD_DHCP6_CLIENT_EVENT_RESEND_EXPIRE 130 
#define  SD_DHCP6_CLIENT_EVENT_RETRANS_MAX 129 
#define  SD_DHCP6_CLIENT_EVENT_STOP 128 
 int /*<<< orphan*/  _fallthrough_ ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(sd_dhcp6_client *client, int event, void *userdata) {
        int r;
        Link *link = userdata;

        FUNC1(link);
        FUNC1(link->network);

        if (FUNC0(link->state, LINK_STATE_FAILED, LINK_STATE_LINGER))
                return;

        switch(event) {
        case SD_DHCP6_CLIENT_EVENT_STOP:
        case SD_DHCP6_CLIENT_EVENT_RESEND_EXPIRE:
        case SD_DHCP6_CLIENT_EVENT_RETRANS_MAX:
                if (FUNC13(client, NULL) >= 0)
                        FUNC11(link, "DHCPv6 lease lost");

                (void) FUNC5(client, link);
                (void) FUNC6(link->manager, link);

                FUNC8(link);
                link->dhcp6_configured = false;
                break;

        case SD_DHCP6_CLIENT_EVENT_IP_ACQUIRE:
                r = FUNC2(client, link);
                if (r < 0) {
                        FUNC9(link);
                        return;
                }

                r = FUNC4(client, link);
                if (r < 0)
                        FUNC10(link, "DHCPv6 did not receive prefixes to delegate");

                _fallthrough_;
        case SD_DHCP6_CLIENT_EVENT_INFORMATION_REQUEST:
                r = FUNC3(client, link);
                if (r < 0) {
                        FUNC9(link);
                        return;
                }

                FUNC8(link);
                link->dhcp6_configured = true;
                break;

        default:
                if (event < 0)
                        FUNC12(link, event, "DHCPv6 error: %m");
                else
                        FUNC11(link, "DHCPv6 unknown event: %d", event);
                return;
        }

        FUNC7(link);
}