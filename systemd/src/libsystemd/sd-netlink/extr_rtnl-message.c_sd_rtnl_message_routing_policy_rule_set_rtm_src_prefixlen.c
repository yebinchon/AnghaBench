
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct rtmsg {unsigned char rtm_src_len; } ;
struct TYPE_6__ {struct TYPE_6__* hdr; int nlmsg_type; } ;
typedef TYPE_1__ sd_netlink_message ;


 int EINVAL ;
 struct rtmsg* NLMSG_DATA (TYPE_1__*) ;
 int assert_return (TYPE_1__*,int ) ;
 TYPE_1__* rtnl_message_type_is_routing_policy_rule (int ) ;

int sd_rtnl_message_routing_policy_rule_set_rtm_src_prefixlen(sd_netlink_message *m, unsigned char len) {
        struct rtmsg *routing_policy_rule;

        assert_return(m, -EINVAL);
        assert_return(m->hdr, -EINVAL);
        assert_return(rtnl_message_type_is_routing_policy_rule(m->hdr->nlmsg_type), -EINVAL);

        routing_policy_rule = NLMSG_DATA(m->hdr);

        routing_policy_rule->rtm_src_len = len;

        return 0;
}
