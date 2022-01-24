#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct in6_addr {int dummy; } ;
struct TYPE_7__ {int transaction_id; } ;
typedef  TYPE_1__ DHCP6Message ;

/* Variables and functions */
 struct in6_addr IN6ADDR_ALL_DHCP6_RELAY_AGENTS_AND_SERVERS_INIT ; 
 int FUNC0 (struct in6_addr*,struct in6_addr*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int test_client_message_num ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,size_t) ; 
 int* test_dhcp_fd ; 

int FUNC7(int s, struct in6_addr *server_address,
                                  const void *packet, size_t len) {
        struct in6_addr mcast =
                IN6ADDR_ALL_DHCP6_RELAY_AGENTS_AND_SERVERS_INIT;
        DHCP6Message *message;

        FUNC1(s == test_dhcp_fd[0]);
        FUNC1(server_address);
        FUNC1(packet);
        FUNC1(len > sizeof(DHCP6Message) + 4);
        FUNC1(FUNC0(server_address, &mcast));

        message = (DHCP6Message *)packet;

        FUNC1(message->transaction_id & 0x00ffffff);

        if (test_client_message_num == 0) {
                FUNC4(message, len);
                FUNC3(message);
                test_client_message_num++;
        } else if (test_client_message_num == 1) {
                FUNC6(message, len);
                FUNC2(message);
                test_client_message_num++;
        } else if (test_client_message_num == 2) {
                FUNC5(message, len);
                FUNC3(message);
                test_client_message_num++;
        }

        return len;
}