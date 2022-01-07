
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct in6_addr {int dummy; } ;
struct TYPE_7__ {int transaction_id; } ;
typedef TYPE_1__ DHCP6Message ;


 struct in6_addr IN6ADDR_ALL_DHCP6_RELAY_AGENTS_AND_SERVERS_INIT ;
 int IN6_ARE_ADDR_EQUAL (struct in6_addr*,struct in6_addr*) ;
 int assert_se (int) ;
 int test_client_message_num ;
 int test_client_send_advertise (TYPE_1__*) ;
 int test_client_send_reply (TYPE_1__*) ;
 int test_client_verify_information_request (TYPE_1__*,size_t) ;
 int test_client_verify_request (TYPE_1__*,size_t) ;
 int test_client_verify_solicit (TYPE_1__*,size_t) ;
 int* test_dhcp_fd ;

int dhcp6_network_send_udp_socket(int s, struct in6_addr *server_address,
                                  const void *packet, size_t len) {
        struct in6_addr mcast =
                IN6ADDR_ALL_DHCP6_RELAY_AGENTS_AND_SERVERS_INIT;
        DHCP6Message *message;

        assert_se(s == test_dhcp_fd[0]);
        assert_se(server_address);
        assert_se(packet);
        assert_se(len > sizeof(DHCP6Message) + 4);
        assert_se(IN6_ARE_ADDR_EQUAL(server_address, &mcast));

        message = (DHCP6Message *)packet;

        assert_se(message->transaction_id & 0x00ffffff);

        if (test_client_message_num == 0) {
                test_client_verify_information_request(message, len);
                test_client_send_reply(message);
                test_client_message_num++;
        } else if (test_client_message_num == 1) {
                test_client_verify_solicit(message, len);
                test_client_send_advertise(message);
                test_client_message_num++;
        } else if (test_client_message_num == 2) {
                test_client_verify_request(message, len);
                test_client_send_reply(message);
                test_client_message_num++;
        }

        return len;
}
