
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_22__ {int in; } ;
struct TYPE_21__ {int in; } ;
struct TYPE_23__ {scalar_t__ kind; scalar_t__ fou_encap_type; scalar_t__ sixrd_prefixlen; scalar_t__ isatap; int sixrd_prefix; int fou_destination_port; int encap_src_port; scalar_t__ fou_tunnel; int pmtudisc; int ttl; TYPE_2__ remote; TYPE_1__ local; scalar_t__ assign_to_loopback; } ;
typedef TYPE_3__ sd_netlink_message ;
typedef TYPE_3__ Tunnel ;
struct TYPE_24__ {int ifindex; } ;
typedef TYPE_3__ NetDev ;
typedef TYPE_6__ Link ;


 int IFLA_IPTUN_6RD_PREFIX ;
 int IFLA_IPTUN_6RD_PREFIXLEN ;
 int IFLA_IPTUN_ENCAP_DPORT ;
 int IFLA_IPTUN_ENCAP_SPORT ;
 int IFLA_IPTUN_ENCAP_TYPE ;
 int IFLA_IPTUN_FLAGS ;
 int IFLA_IPTUN_LINK ;
 int IFLA_IPTUN_LOCAL ;
 int IFLA_IPTUN_PMTUDISC ;
 int IFLA_IPTUN_REMOTE ;
 int IFLA_IPTUN_TTL ;
 TYPE_3__* IPIP (TYPE_3__*) ;
 int LOOPBACK_IFINDEX ;
 scalar_t__ NETDEV_KIND_IPIP ;
 scalar_t__ NETDEV_KIND_SIT ;
 int SET_FLAG (scalar_t__,int ,scalar_t__) ;
 TYPE_3__* SIT (TYPE_3__*) ;
 int SIT_ISATAP ;
 int assert (TYPE_3__*) ;
 scalar_t__ htobe16 (int ) ;
 int log_netdev_error_errno (TYPE_3__*,int,char*) ;
 int sd_netlink_message_append_in6_addr (TYPE_3__*,int ,int *) ;
 int sd_netlink_message_append_in_addr (TYPE_3__*,int ,int *) ;
 int sd_netlink_message_append_u16 (TYPE_3__*,int ,scalar_t__) ;
 int sd_netlink_message_append_u32 (TYPE_3__*,int ,int ) ;
 int sd_netlink_message_append_u8 (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int netdev_ipip_sit_fill_message_create(NetDev *netdev, Link *link, sd_netlink_message *m) {
        Tunnel *t;
        int r;

        assert(netdev);

        if (netdev->kind == NETDEV_KIND_IPIP)
                t = IPIP(netdev);
        else
                t = SIT(netdev);

        assert(m);
        assert(t);

        if (link || t->assign_to_loopback) {
                r = sd_netlink_message_append_u32(m, IFLA_IPTUN_LINK, link ? link->ifindex : LOOPBACK_IFINDEX);
                if (r < 0)
                        return log_netdev_error_errno(netdev, r, "Could not append IFLA_IPTUN_LINK attribute: %m");
        }

        r = sd_netlink_message_append_in_addr(m, IFLA_IPTUN_LOCAL, &t->local.in);
        if (r < 0)
                return log_netdev_error_errno(netdev, r, "Could not append IFLA_IPTUN_LOCAL attribute: %m");

        r = sd_netlink_message_append_in_addr(m, IFLA_IPTUN_REMOTE, &t->remote.in);
        if (r < 0)
                return log_netdev_error_errno(netdev, r, "Could not append IFLA_IPTUN_REMOTE attribute: %m");

        r = sd_netlink_message_append_u8(m, IFLA_IPTUN_TTL, t->ttl);
        if (r < 0)
                return log_netdev_error_errno(netdev, r, "Could not append IFLA_IPTUN_TTL attribute: %m");

        r = sd_netlink_message_append_u8(m, IFLA_IPTUN_PMTUDISC, t->pmtudisc);
        if (r < 0)
                return log_netdev_error_errno(netdev, r, "Could not append IFLA_IPTUN_PMTUDISC attribute: %m");

        if (t->fou_tunnel) {
                r = sd_netlink_message_append_u16(m, IFLA_IPTUN_ENCAP_TYPE, t->fou_encap_type);
                if (r < 0)
                        return log_netdev_error_errno(netdev, r, "Could not append IFLA_IPTUN_ENCAP_TYPE attribute: %m");

                r = sd_netlink_message_append_u16(m, IFLA_IPTUN_ENCAP_SPORT, htobe16(t->encap_src_port));
                if (r < 0)
                        return log_netdev_error_errno(netdev, r, "Could not append IFLA_IPTUN_ENCAP_SPORT attribute: %m");

                r = sd_netlink_message_append_u16(m, IFLA_IPTUN_ENCAP_DPORT, htobe16(t->fou_destination_port));
                if (r < 0)
                        return log_netdev_error_errno(netdev, r, "Could not append IFLA_IPTUN_ENCAP_DPORT attribute: %m");
        }

        if (netdev->kind == NETDEV_KIND_SIT) {
                if (t->sixrd_prefixlen > 0) {
                        r = sd_netlink_message_append_in6_addr(m, IFLA_IPTUN_6RD_PREFIX, &t->sixrd_prefix);
                        if (r < 0)
                                return log_netdev_error_errno(netdev, r, "Could not append IFLA_IPTUN_6RD_PREFIX attribute: %m");




                        r = sd_netlink_message_append_u16(m, IFLA_IPTUN_6RD_PREFIXLEN, t->sixrd_prefixlen);
                        if (r < 0)
                                return log_netdev_error_errno(netdev, r, "Could not append IFLA_IPTUN_6RD_PREFIXLEN attribute: %m");
                }

                if (t->isatap >= 0) {
                        uint16_t flags = 0;

                        SET_FLAG(flags, SIT_ISATAP, t->isatap);

                        r = sd_netlink_message_append_u16(m, IFLA_IPTUN_FLAGS, flags);
                        if (r < 0)
                                return log_netdev_error_errno(netdev, r, "Could not append IFLA_IPTUN_FLAGS attribute: %m");
                }
        }

        return r;
}
