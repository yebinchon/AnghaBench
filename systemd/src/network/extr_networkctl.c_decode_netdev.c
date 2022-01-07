
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int in6; int in; } ;
struct TYPE_17__ {int in6; int in; } ;
struct TYPE_19__ {int dest_port; int link; void* local_family; TYPE_2__ local; void* group_family; TYPE_1__ group; int vni; } ;
struct TYPE_20__ {int netdev_kind; TYPE_3__ vxlan_info; int mcast_igmp_version; int priority; int stp_state; int ageing_time; int max_age; int hello_time; int forward_delay; } ;
typedef TYPE_4__ sd_netlink_message ;
typedef TYPE_4__ LinkInfo ;


 void* AF_INET ;
 void* AF_INET6 ;
 int IFLA_BR_AGEING_TIME ;
 int IFLA_BR_FORWARD_DELAY ;
 int IFLA_BR_HELLO_TIME ;
 int IFLA_BR_MAX_AGE ;
 int IFLA_BR_MCAST_IGMP_VERSION ;
 int IFLA_BR_PRIORITY ;
 int IFLA_BR_STP_STATE ;
 int IFLA_INFO_DATA ;
 int IFLA_INFO_KIND ;
 int IFLA_LINKINFO ;
 int IFLA_VXLAN_GROUP ;
 int IFLA_VXLAN_GROUP6 ;
 int IFLA_VXLAN_ID ;
 int IFLA_VXLAN_LINK ;
 int IFLA_VXLAN_LOCAL ;
 int IFLA_VXLAN_LOCAL6 ;
 int IFLA_VXLAN_PORT ;
 int IFNAMSIZ ;
 int assert (TYPE_4__*) ;
 int sd_netlink_message_enter_container (TYPE_4__*,int ) ;
 int sd_netlink_message_exit_container (TYPE_4__*) ;
 int sd_netlink_message_read_in6_addr (TYPE_4__*,int ,int *) ;
 int sd_netlink_message_read_in_addr (TYPE_4__*,int ,int *) ;
 int sd_netlink_message_read_string (TYPE_4__*,int ,char const**) ;
 int sd_netlink_message_read_u16 (TYPE_4__*,int ,int *) ;
 int sd_netlink_message_read_u32 (TYPE_4__*,int ,int *) ;
 int sd_netlink_message_read_u8 (TYPE_4__*,int ,int *) ;
 scalar_t__ streq (char const*,char*) ;
 int strncpy (int ,char const*,int ) ;

__attribute__((used)) static int decode_netdev(sd_netlink_message *m, LinkInfo *info) {
        const char *received_kind;
        int r;

        assert(m);
        assert(info);

        r = sd_netlink_message_enter_container(m, IFLA_LINKINFO);
        if (r < 0)
                return r;

        r = sd_netlink_message_read_string(m, IFLA_INFO_KIND, &received_kind);
        if (r < 0)
                return r;

        r = sd_netlink_message_enter_container(m, IFLA_INFO_DATA);
        if (r < 0)
                return r;

        if (streq(received_kind, "bridge")) {
                (void) sd_netlink_message_read_u32(m, IFLA_BR_FORWARD_DELAY, &info->forward_delay);
                (void) sd_netlink_message_read_u32(m, IFLA_BR_HELLO_TIME, &info->hello_time);
                (void) sd_netlink_message_read_u32(m, IFLA_BR_MAX_AGE, &info->max_age);
                (void) sd_netlink_message_read_u32(m, IFLA_BR_AGEING_TIME, &info->ageing_time);
                (void) sd_netlink_message_read_u32(m, IFLA_BR_STP_STATE, &info->stp_state);
                (void) sd_netlink_message_read_u16(m, IFLA_BR_PRIORITY, &info->priority);
                (void) sd_netlink_message_read_u8(m, IFLA_BR_MCAST_IGMP_VERSION, &info->mcast_igmp_version);

        } else if (streq(received_kind, "vxlan")) {
                (void) sd_netlink_message_read_u32(m, IFLA_VXLAN_ID, &info->vxlan_info.vni);

                r = sd_netlink_message_read_in_addr(m, IFLA_VXLAN_GROUP, &info->vxlan_info.group.in);
                if (r >= 0)
                        info->vxlan_info.group_family = AF_INET;
                else {
                        r = sd_netlink_message_read_in6_addr(m, IFLA_VXLAN_GROUP6, &info->vxlan_info.group.in6);
                        if (r >= 0)
                                info->vxlan_info.group_family = AF_INET6;
                }

                r = sd_netlink_message_read_in_addr(m, IFLA_VXLAN_LOCAL, &info->vxlan_info.local.in);
                if (r >= 0)
                        info->vxlan_info.local_family = AF_INET;
                else {
                        r = sd_netlink_message_read_in6_addr(m, IFLA_VXLAN_LOCAL6, &info->vxlan_info.local.in6);
                        if (r >= 0)
                                info->vxlan_info.local_family = AF_INET6;
                }

                (void) sd_netlink_message_read_u32(m, IFLA_VXLAN_LINK, &info->vxlan_info.link);
                (void) sd_netlink_message_read_u16(m, IFLA_VXLAN_PORT, &info->vxlan_info.dest_port);
        }

        strncpy(info->netdev_kind, received_kind, IFNAMSIZ);

        (void) sd_netlink_message_exit_container(m);
        (void) sd_netlink_message_exit_container(m);

        return 0;
}
