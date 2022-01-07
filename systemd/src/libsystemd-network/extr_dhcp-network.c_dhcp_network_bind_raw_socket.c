
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union sockaddr_union {int dummy; } sockaddr_union ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_2__ {int member_5; int member_4; int member_3; int member_2; int member_1; int member_0; } ;
struct ether_addr {TYPE_1__ member_0; } ;


 int ARPHRD_ETHER ;
 int ARPHRD_INFINIBAND ;
 int EINVAL ;
 size_t ETH_ALEN ;
 size_t INFINIBAND_ALEN ;
 int _bind_raw_socket (int,union sockaddr_union*,int ,int const*,size_t,int const*,struct ether_addr*,int ,int,int ) ;
 int assert_return (int,int) ;
 int memcpy (struct ether_addr*,int const*,size_t) ;

int dhcp_network_bind_raw_socket(int ifindex, union sockaddr_union *link,
                                 uint32_t xid, const uint8_t *mac_addr,
                                 size_t mac_addr_len, uint16_t arp_type,
                                 uint16_t port) {
        static const uint8_t eth_bcast[] = { 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF };

        static const uint8_t ib_bcast[] = {
                0x00, 0xff, 0xff, 0xff, 0xff, 0x12, 0x40, 0x1b,
                0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                0xff, 0xff, 0xff, 0xff
          };
        struct ether_addr eth_mac = { { 0, 0, 0, 0, 0, 0 } };
        const uint8_t *bcast_addr = ((void*)0);
        uint8_t dhcp_hlen = 0;

        if (arp_type == ARPHRD_ETHER) {
                assert_return(mac_addr_len == ETH_ALEN, -EINVAL);
                memcpy(&eth_mac, mac_addr, ETH_ALEN);
                bcast_addr = eth_bcast;
                dhcp_hlen = ETH_ALEN;
        } else if (arp_type == ARPHRD_INFINIBAND) {
                assert_return(mac_addr_len == INFINIBAND_ALEN, -EINVAL);
                bcast_addr = ib_bcast;
        } else
                return -EINVAL;

        return _bind_raw_socket(ifindex, link, xid, mac_addr, mac_addr_len,
                                bcast_addr, &eth_mac, arp_type, dhcp_hlen, port);
}
