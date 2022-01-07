
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct rtmsg {int rtm_family; int rtm_type; int rtm_scope; int rtm_protocol; } ;
struct TYPE_7__ {TYPE_6__* hdr; } ;
typedef TYPE_1__ sd_netlink_message ;
typedef int sd_netlink ;
struct TYPE_8__ {int nlmsg_flags; } ;


 int EINVAL ;
 struct rtmsg* NLMSG_DATA (TYPE_6__*) ;
 int NLM_F_CREATE ;
 int NLM_F_EXCL ;
 scalar_t__ RTM_NEWRULE ;
 int RTN_UNICAST ;
 int RTPROT_BOOT ;
 int RT_SCOPE_UNIVERSE ;
 int assert_return (TYPE_1__**,int ) ;
 int message_new (int *,TYPE_1__**,scalar_t__) ;
 TYPE_1__** rtnl_message_type_is_routing_policy_rule (scalar_t__) ;

int sd_rtnl_message_new_routing_policy_rule(sd_netlink *rtnl, sd_netlink_message **ret, uint16_t nlmsg_type, int ifal_family) {
        struct rtmsg *rtm;
        int r;

        assert_return(rtnl_message_type_is_routing_policy_rule(nlmsg_type), -EINVAL);
        assert_return(ret, -EINVAL);

        r = message_new(rtnl, ret, nlmsg_type);
        if (r < 0)
                return r;

        if (nlmsg_type == RTM_NEWRULE)
                (*ret)->hdr->nlmsg_flags |= NLM_F_CREATE | NLM_F_EXCL;

        rtm = NLMSG_DATA((*ret)->hdr);
        rtm->rtm_family = ifal_family;
        rtm->rtm_protocol = RTPROT_BOOT;
        rtm->rtm_scope = RT_SCOPE_UNIVERSE;
        rtm->rtm_type = RTN_UNICAST;

        return 0;
}
