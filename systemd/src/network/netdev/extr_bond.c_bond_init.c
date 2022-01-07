
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int all_slaves_active; int tlb_dynamic_lb; int lp_interval; int num_grat_arp; int packets_per_slave; int resend_igmp; int primary_reselect; int arp_all_targets; int arp_validate; int fail_over_mac; int ad_select; int lacp_rate; int xmit_hash_policy; int mode; } ;
typedef TYPE_1__ NetDev ;
typedef TYPE_1__ Bond ;


 TYPE_1__* BOND (TYPE_1__*) ;
 int GRATUITOUS_ARP_DEFAULT ;
 int LEARNING_PACKETS_INTERVAL_MIN_SEC ;
 int PACKETS_PER_SLAVE_DEFAULT ;
 int RESEND_IGMP_DEFAULT ;
 int _NETDEV_BOND_AD_SELECT_INVALID ;
 int _NETDEV_BOND_ARP_ALL_TARGETS_INVALID ;
 int _NETDEV_BOND_ARP_VALIDATE_INVALID ;
 int _NETDEV_BOND_FAIL_OVER_MAC_INVALID ;
 int _NETDEV_BOND_LACP_RATE_INVALID ;
 int _NETDEV_BOND_MODE_INVALID ;
 int _NETDEV_BOND_PRIMARY_RESELECT_INVALID ;
 int _NETDEV_BOND_XMIT_HASH_POLICY_INVALID ;
 int assert (TYPE_1__*) ;

__attribute__((used)) static void bond_init(NetDev *netdev) {
        Bond *b;

        assert(netdev);

        b = BOND(netdev);

        assert(b);

        b->mode = _NETDEV_BOND_MODE_INVALID;
        b->xmit_hash_policy = _NETDEV_BOND_XMIT_HASH_POLICY_INVALID;
        b->lacp_rate = _NETDEV_BOND_LACP_RATE_INVALID;
        b->ad_select = _NETDEV_BOND_AD_SELECT_INVALID;
        b->fail_over_mac = _NETDEV_BOND_FAIL_OVER_MAC_INVALID;
        b->arp_validate = _NETDEV_BOND_ARP_VALIDATE_INVALID;
        b->arp_all_targets = _NETDEV_BOND_ARP_ALL_TARGETS_INVALID;
        b->primary_reselect = _NETDEV_BOND_PRIMARY_RESELECT_INVALID;

        b->all_slaves_active = 0;
        b->tlb_dynamic_lb = -1;

        b->resend_igmp = RESEND_IGMP_DEFAULT;
        b->packets_per_slave = PACKETS_PER_SLAVE_DEFAULT;
        b->num_grat_arp = GRATUITOUS_ARP_DEFAULT;
        b->lp_interval = LEARNING_PACKETS_INTERVAL_MIN_SEC;
}
