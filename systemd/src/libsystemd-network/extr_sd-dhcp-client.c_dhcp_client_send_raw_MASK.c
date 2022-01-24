#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  link; int /*<<< orphan*/  fd; int /*<<< orphan*/  ip_service_type; int /*<<< orphan*/  port; } ;
typedef  TYPE_1__ sd_dhcp_client ;
typedef  int /*<<< orphan*/  DHCPPacket ;

/* Variables and functions */
 int /*<<< orphan*/  DHCP_PORT_SERVER ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  INADDR_BROADCAST ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(
                sd_dhcp_client *client,
                DHCPPacket *packet,
                size_t len) {

        FUNC1(packet, INADDR_ANY, client->port,
                                      INADDR_BROADCAST, DHCP_PORT_SERVER, len, client->ip_service_type);

        return FUNC0(client->fd, &client->link,
                                            packet, len);
}