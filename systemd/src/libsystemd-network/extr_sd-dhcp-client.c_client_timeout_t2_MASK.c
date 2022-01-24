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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  sd_event_source ;
struct TYPE_6__ {int fd; int /*<<< orphan*/  port; int /*<<< orphan*/  arp_type; int /*<<< orphan*/  mac_addr_len; int /*<<< orphan*/  mac_addr; int /*<<< orphan*/  xid; int /*<<< orphan*/  link; int /*<<< orphan*/  ifindex; scalar_t__ attempt; int /*<<< orphan*/  state; int /*<<< orphan*/  receive_message; } ;
typedef  TYPE_1__ sd_dhcp_client ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  DHCP_STATE_REBINDING ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  client_receive_message_raw ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(sd_event_source *s, uint64_t usec, void *userdata) {
        sd_dhcp_client *client = userdata;
        FUNC0(client);
        int r;

        FUNC1(client);

        client->receive_message = FUNC6(client->receive_message);
        client->fd = FUNC2(client->fd);

        client->state = DHCP_STATE_REBINDING;
        client->attempt = 0;

        r = FUNC5(client->ifindex, &client->link,
                                         client->xid, client->mac_addr,
                                         client->mac_addr_len, client->arp_type,
                                         client->port);
        if (r < 0) {
                FUNC4(client, r);
                return 0;
        }
        client->fd = r;

        return FUNC3(client, client_receive_message_raw);
}