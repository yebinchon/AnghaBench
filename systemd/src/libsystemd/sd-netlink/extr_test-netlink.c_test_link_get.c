
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct ether_addr {int dummy; } ;
typedef int sd_netlink_message ;
typedef int sd_netlink ;


 int IFLA_ADDRESS ;
 int IFLA_CARRIER ;
 int IFLA_GROUP ;
 int IFLA_IFNAME ;
 int IFLA_LINKMODE ;
 int IFLA_MTU ;
 int IFLA_NUM_RX_QUEUES ;
 int IFLA_NUM_TX_QUEUES ;
 int IFLA_OPERSTATE ;
 int IFLA_TXQLEN ;
 int RTM_GETLINK ;
 int assert_se (int) ;
 int sd_netlink_call (int *,int *,int,int **) ;
 scalar_t__ sd_netlink_message_append_u32 (int *,int ,int) ;
 scalar_t__ sd_netlink_message_append_u8 (int *,int ,int ) ;
 scalar_t__ sd_netlink_message_read_ether_addr (int *,int ,struct ether_addr*) ;
 scalar_t__ sd_netlink_message_read_string (int *,int ,char const**) ;
 scalar_t__ sd_netlink_message_read_u32 (int *,int ,int*) ;
 scalar_t__ sd_netlink_message_read_u8 (int *,int ,int *) ;
 int * sd_netlink_message_unref (int *) ;
 scalar_t__ sd_rtnl_message_new_link (int *,int **,int ,int) ;

__attribute__((used)) static void test_link_get(sd_netlink *rtnl, int ifindex) {
        sd_netlink_message *m;
        sd_netlink_message *r;
        uint32_t mtu = 1500;
        const char *str_data;
        uint8_t u8_data;
        uint32_t u32_data;
        struct ether_addr eth_data;

        assert_se(sd_rtnl_message_new_link(rtnl, &m, RTM_GETLINK, ifindex) >= 0);
        assert_se(m);


        assert_se(sd_netlink_message_append_u8(m, IFLA_CARRIER, 0) >= 0);
        assert_se(sd_netlink_message_append_u8(m, IFLA_OPERSTATE, 0) >= 0);
        assert_se(sd_netlink_message_append_u8(m, IFLA_LINKMODE, 0) >= 0);


        assert_se(sd_netlink_message_append_u32(m, IFLA_MTU, mtu) >= 0);
        assert_se(sd_netlink_message_append_u32(m, IFLA_GROUP, 0) >= 0);
        assert_se(sd_netlink_message_append_u32(m, IFLA_TXQLEN, 0) >= 0);
        assert_se(sd_netlink_message_append_u32(m, IFLA_NUM_TX_QUEUES, 0) >= 0);
        assert_se(sd_netlink_message_append_u32(m, IFLA_NUM_RX_QUEUES, 0) >= 0);

        assert_se(sd_netlink_call(rtnl, m, -1, &r) == 1);

        assert_se(sd_netlink_message_read_string(r, IFLA_IFNAME, &str_data) == 0);

        assert_se(sd_netlink_message_read_u8(r, IFLA_CARRIER, &u8_data) == 0);
        assert_se(sd_netlink_message_read_u8(r, IFLA_OPERSTATE, &u8_data) == 0);
        assert_se(sd_netlink_message_read_u8(r, IFLA_LINKMODE, &u8_data) == 0);

        assert_se(sd_netlink_message_read_u32(r, IFLA_MTU, &u32_data) == 0);
        assert_se(sd_netlink_message_read_u32(r, IFLA_GROUP, &u32_data) == 0);
        assert_se(sd_netlink_message_read_u32(r, IFLA_TXQLEN, &u32_data) == 0);
        assert_se(sd_netlink_message_read_u32(r, IFLA_NUM_TX_QUEUES, &u32_data) == 0);
        assert_se(sd_netlink_message_read_u32(r, IFLA_NUM_RX_QUEUES, &u32_data) == 0);

        assert_se(sd_netlink_message_read_ether_addr(r, IFLA_ADDRESS, &eth_data) == 0);

        assert_se((m = sd_netlink_message_unref(m)) == ((void*)0));
        assert_se((r = sd_netlink_message_unref(r)) == ((void*)0));
}
