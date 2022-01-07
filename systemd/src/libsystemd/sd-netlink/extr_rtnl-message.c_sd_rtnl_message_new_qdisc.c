
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_6__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct tcmsg {int tcm_family; int tcm_ifindex; } ;
struct TYPE_7__ {TYPE_6__* hdr; } ;
typedef TYPE_1__ sd_netlink_message ;
typedef int sd_netlink ;
struct TYPE_8__ {int nlmsg_flags; } ;


 int EINVAL ;
 struct tcmsg* NLMSG_DATA (TYPE_6__*) ;
 int NLM_F_CREATE ;
 int NLM_F_EXCL ;
 scalar_t__ RTM_NEWQDISC ;
 int assert_return (TYPE_1__**,int ) ;
 int message_new (int *,TYPE_1__**,scalar_t__) ;
 TYPE_1__** rtnl_message_type_is_qdisc (scalar_t__) ;

int sd_rtnl_message_new_qdisc(sd_netlink *rtnl, sd_netlink_message **ret, uint16_t nlmsg_type, int tcm_family, int tcm_ifindex) {
        struct tcmsg *tcm;
        int r;

        assert_return(rtnl_message_type_is_qdisc(nlmsg_type), -EINVAL);
        assert_return(ret, -EINVAL);

        r = message_new(rtnl, ret, nlmsg_type);
        if (r < 0)
                return r;

        if (nlmsg_type == RTM_NEWQDISC)
                (*ret)->hdr->nlmsg_flags |= NLM_F_CREATE | NLM_F_EXCL;

        tcm = NLMSG_DATA((*ret)->hdr);
        tcm->tcm_family = tcm_family;
        tcm->tcm_ifindex = tcm_ifindex;

        return 0;
}
