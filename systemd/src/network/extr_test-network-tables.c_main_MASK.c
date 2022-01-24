#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  ADDRESS_FAMILY ; 
 int /*<<< orphan*/  DHCP6_MESSAGE ; 
 int /*<<< orphan*/  DHCP6_STATUS ; 
 int /*<<< orphan*/  DHCP_USE_DOMAINS ; 
 int /*<<< orphan*/  DUP ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  IPV6_PRIVACY_EXTENSIONS ; 
 int /*<<< orphan*/  LINK_OPERSTATE ; 
 int /*<<< orphan*/  LLDP_MODE ; 
 int /*<<< orphan*/  NETDEV_BOND_AD_SELECT ; 
 int /*<<< orphan*/  NETDEV_BOND_ARP_ALL_TARGETS ; 
 int /*<<< orphan*/  NETDEV_BOND_ARP_VALIDATE ; 
 int /*<<< orphan*/  NETDEV_BOND_FAIL_OVER_MAC ; 
 int /*<<< orphan*/  NETDEV_BOND_LACP_RATE ; 
 int /*<<< orphan*/  NETDEV_BOND_MODE ; 
 int /*<<< orphan*/  NETDEV_BOND_PRIMARY_RESELECT ; 
 int /*<<< orphan*/  NETDEV_BOND_XMIT_HASH_POLICY ; 
 int /*<<< orphan*/  NETDEV_IP6_TNL_MODE ; 
 int /*<<< orphan*/  NETDEV_IPVLAN_FLAGS ; 
 int /*<<< orphan*/  NETDEV_IPVLAN_MODE ; 
 int /*<<< orphan*/  NETDEV_KIND ; 
 int /*<<< orphan*/  NETDEV_MACVLAN_MODE ; 
 int /*<<< orphan*/  NL_UNION_LINK_INFO_DATA ; 
 int /*<<< orphan*/  RADV_PREFIX_DELEGATION ; 
 int /*<<< orphan*/  SD_LLDP_EVENT ; 
 int /*<<< orphan*/  SD_NDISC_EVENT ; 
 int /*<<< orphan*/  WOL ; 
 int /*<<< orphan*/  address_family ; 
 int /*<<< orphan*/  bond_ad_select ; 
 int /*<<< orphan*/  bond_arp_all_targets ; 
 int /*<<< orphan*/  bond_arp_validate ; 
 int /*<<< orphan*/  bond_fail_over_mac ; 
 int /*<<< orphan*/  bond_lacp_rate ; 
 int /*<<< orphan*/  bond_mode ; 
 int /*<<< orphan*/  bond_primary_reselect ; 
 int /*<<< orphan*/  bond_xmit_hash_policy ; 
 int /*<<< orphan*/  dhcp6_message_status ; 
 int /*<<< orphan*/  dhcp6_message_type ; 
 int /*<<< orphan*/  dhcp_use_domains ; 
 int /*<<< orphan*/  duplex ; 
 int /*<<< orphan*/  ip6tnl_mode ; 
 int /*<<< orphan*/  ipv6_privacy_extensions ; 
 int /*<<< orphan*/  ipvlan_flags ; 
 int /*<<< orphan*/  ipvlan_mode ; 
 int /*<<< orphan*/  link_operstate ; 
 int /*<<< orphan*/  lldp_event ; 
 int /*<<< orphan*/  lldp_mode ; 
 int /*<<< orphan*/  macvlan_mode ; 
 int /*<<< orphan*/  ndisc_event ; 
 int /*<<< orphan*/  netdev_kind ; 
 int /*<<< orphan*/  nl_union_link_info_data ; 
 int /*<<< orphan*/  radv_prefix_delegation ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wol ; 

int FUNC2(int argc, char **argv) {
        FUNC0(bond_ad_select, NETDEV_BOND_AD_SELECT);
        FUNC0(bond_arp_all_targets, NETDEV_BOND_ARP_ALL_TARGETS);
        FUNC0(bond_arp_validate, NETDEV_BOND_ARP_VALIDATE);
        FUNC0(bond_fail_over_mac, NETDEV_BOND_FAIL_OVER_MAC);
        FUNC0(bond_lacp_rate, NETDEV_BOND_LACP_RATE);
        FUNC0(bond_mode, NETDEV_BOND_MODE);
        FUNC0(bond_primary_reselect, NETDEV_BOND_PRIMARY_RESELECT);
        FUNC0(bond_xmit_hash_policy, NETDEV_BOND_XMIT_HASH_POLICY);
        FUNC0(dhcp6_message_status, DHCP6_STATUS);
        FUNC1(dhcp6_message_type, DHCP6_MESSAGE); /* enum starts from 1 */
        FUNC0(dhcp_use_domains, DHCP_USE_DOMAINS);
        FUNC0(duplex, DUP);
        FUNC0(ip6tnl_mode, NETDEV_IP6_TNL_MODE);
        FUNC0(ipv6_privacy_extensions, IPV6_PRIVACY_EXTENSIONS);
        FUNC0(ipvlan_flags, NETDEV_IPVLAN_FLAGS);
        FUNC0(link_operstate, LINK_OPERSTATE);
        /* test_table(link_state, LINK_STATE);  — not a reversible mapping */
        FUNC0(lldp_mode, LLDP_MODE);
        FUNC0(netdev_kind, NETDEV_KIND);
        FUNC0(nl_union_link_info_data, NL_UNION_LINK_INFO_DATA);
        FUNC0(radv_prefix_delegation, RADV_PREFIX_DELEGATION);
        FUNC0(wol, WOL);
        FUNC0(lldp_event, SD_LLDP_EVENT);
        FUNC0(ndisc_event, SD_NDISC_EVENT);

        FUNC1(ipvlan_mode, NETDEV_IPVLAN_MODE);
        FUNC1(macvlan_mode, NETDEV_MACVLAN_MODE);
        FUNC1(address_family, ADDRESS_FAMILY);

        return EXIT_SUCCESS;
}