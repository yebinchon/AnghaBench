
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_23__ {int in; } ;
struct TYPE_22__ {int in; } ;
struct TYPE_24__ {int kind; scalar_t__ key; scalar_t__ ikey; scalar_t__ okey; scalar_t__ gre_erspan_sequence; int fou_destination_port; int encap_src_port; int fou_encap_type; scalar_t__ fou_tunnel; int pmtudisc; int tos; int ttl; TYPE_2__ remote; TYPE_1__ local; int erspan_index; scalar_t__ assign_to_loopback; } ;
typedef TYPE_3__ sd_netlink_message ;
typedef TYPE_3__ Tunnel ;
struct TYPE_25__ {int ifindex; } ;
typedef TYPE_3__ NetDev ;
typedef TYPE_6__ Link ;


 TYPE_3__* ERSPAN (TYPE_3__*) ;
 TYPE_3__* GRE (TYPE_3__*) ;
 TYPE_3__* GRETAP (TYPE_3__*) ;
 int GRE_KEY ;
 int GRE_SEQ ;
 int IFLA_GRE_ENCAP_DPORT ;
 int IFLA_GRE_ENCAP_SPORT ;
 int IFLA_GRE_ENCAP_TYPE ;
 int IFLA_GRE_ERSPAN_INDEX ;
 int IFLA_GRE_IFLAGS ;
 int IFLA_GRE_IKEY ;
 int IFLA_GRE_LINK ;
 int IFLA_GRE_LOCAL ;
 int IFLA_GRE_OFLAGS ;
 int IFLA_GRE_OKEY ;
 int IFLA_GRE_PMTUDISC ;
 int IFLA_GRE_REMOTE ;
 int IFLA_GRE_TOS ;
 int IFLA_GRE_TTL ;
 int LOOPBACK_IFINDEX ;



 int assert (TYPE_3__*) ;
 int assert_not_reached (char*) ;
 int htobe16 (int ) ;
 int htobe32 (scalar_t__) ;
 int log_netdev_error_errno (TYPE_3__*,int,char*) ;
 int sd_netlink_message_append_in_addr (TYPE_3__*,int ,int *) ;
 int sd_netlink_message_append_u16 (TYPE_3__*,int ,int ) ;
 int sd_netlink_message_append_u32 (TYPE_3__*,int ,int ) ;
 int sd_netlink_message_append_u8 (TYPE_3__*,int ,int ) ;

__attribute__((used)) static int netdev_gre_erspan_fill_message_create(NetDev *netdev, Link *link, sd_netlink_message *m) {
        uint32_t ikey = 0;
        uint32_t okey = 0;
        uint16_t iflags = 0;
        uint16_t oflags = 0;
        Tunnel *t;
        int r;

        assert(netdev);
        assert(m);

        switch (netdev->kind) {
        case 129:
                t = GRE(netdev);
                break;
        case 130:
                t = ERSPAN(netdev);
                break;
        case 128:
                t = GRETAP(netdev);
                break;
        default:
                assert_not_reached("invalid netdev kind");
        }

        assert(t);

        if (link || t->assign_to_loopback) {
                r = sd_netlink_message_append_u32(m, IFLA_GRE_LINK, link ? link->ifindex : LOOPBACK_IFINDEX);
                if (r < 0)
                        return log_netdev_error_errno(netdev, r, "Could not append IFLA_GRE_LINK attribute: %m");
        }

        if (netdev->kind == 130) {
                r = sd_netlink_message_append_u32(m, IFLA_GRE_ERSPAN_INDEX, t->erspan_index);
                if (r < 0)
                        return log_netdev_error_errno(netdev, r, "Could not append IFLA_GRE_ERSPAN_INDEX attribute: %m");
        }

        r = sd_netlink_message_append_in_addr(m, IFLA_GRE_LOCAL, &t->local.in);
        if (r < 0)
                return log_netdev_error_errno(netdev, r, "Could not append IFLA_GRE_LOCAL attribute: %m");

        r = sd_netlink_message_append_in_addr(m, IFLA_GRE_REMOTE, &t->remote.in);
        if (r < 0)
                return log_netdev_error_errno(netdev, r, "Could not append IFLA_GRE_REMOTE attribute: %m");

        r = sd_netlink_message_append_u8(m, IFLA_GRE_TTL, t->ttl);
        if (r < 0)
                return log_netdev_error_errno(netdev, r, "Could not append IFLA_GRE_TTL attribute: %m");

        r = sd_netlink_message_append_u8(m, IFLA_GRE_TOS, t->tos);
        if (r < 0)
                return log_netdev_error_errno(netdev, r, "Could not append IFLA_GRE_TOS attribute: %m");

        r = sd_netlink_message_append_u8(m, IFLA_GRE_PMTUDISC, t->pmtudisc);
        if (r < 0)
                return log_netdev_error_errno(netdev, r, "Could not append IFLA_GRE_PMTUDISC attribute: %m");

        if (t->key != 0) {
                ikey = okey = htobe32(t->key);
                iflags |= GRE_KEY;
                oflags |= GRE_KEY;
        }

        if (t->ikey != 0) {
                ikey = htobe32(t->ikey);
                iflags |= GRE_KEY;
        }

        if (t->okey != 0) {
                okey = htobe32(t->okey);
                oflags |= GRE_KEY;
        }

        if (t->gre_erspan_sequence > 0) {
                iflags |= GRE_SEQ;
                oflags |= GRE_SEQ;
        } else if (t->gre_erspan_sequence == 0) {
                iflags &= ~GRE_SEQ;
                oflags &= ~GRE_SEQ;
        }

        r = sd_netlink_message_append_u32(m, IFLA_GRE_IKEY, ikey);
        if (r < 0)
                return log_netdev_error_errno(netdev, r, "Could not append IFLA_GRE_IKEY attribute: %m");

        r = sd_netlink_message_append_u32(m, IFLA_GRE_OKEY, okey);
        if (r < 0)
                return log_netdev_error_errno(netdev, r, "Could not append IFLA_GRE_OKEY attribute: %m");

        r = sd_netlink_message_append_u16(m, IFLA_GRE_IFLAGS, iflags);
        if (r < 0)
                return log_netdev_error_errno(netdev, r, "Could not append IFLA_GRE_IFLAGS attribute: %m");

        r = sd_netlink_message_append_u16(m, IFLA_GRE_OFLAGS, oflags);
        if (r < 0)
                return log_netdev_error_errno(netdev, r, "Could not append IFLA_GRE_OFLAGS, attribute: %m");

        if (t->fou_tunnel) {
                r = sd_netlink_message_append_u16(m, IFLA_GRE_ENCAP_TYPE, t->fou_encap_type);
                if (r < 0)
                        return log_netdev_error_errno(netdev, r, "Could not append IFLA_GRE_ENCAP_TYPE attribute: %m");

                r = sd_netlink_message_append_u16(m, IFLA_GRE_ENCAP_SPORT, htobe16(t->encap_src_port));
                if (r < 0)
                        return log_netdev_error_errno(netdev, r, "Could not append IFLA_GRE_ENCAP_SPORT attribute: %m");

                r = sd_netlink_message_append_u16(m, IFLA_GRE_ENCAP_DPORT, htobe16(t->fou_destination_port));
                if (r < 0)
                        return log_netdev_error_errno(netdev, r, "Could not append IFLA_GRE_ENCAP_DPORT attribute: %m");
        }

        return r;
}
