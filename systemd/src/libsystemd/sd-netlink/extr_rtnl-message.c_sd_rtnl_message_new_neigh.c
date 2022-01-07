
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct ndmsg {int ndm_family; int ndm_ifindex; } ;
struct TYPE_8__ {TYPE_6__* hdr; } ;
typedef TYPE_1__ sd_netlink_message ;
typedef int sd_netlink ;
struct TYPE_9__ {int nlmsg_flags; } ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 int EINVAL ;
 TYPE_1__** IN_SET (int,int ,int ,int ,int ) ;
 struct ndmsg* NLMSG_DATA (TYPE_6__*) ;
 int NLM_F_APPEND ;
 int NLM_F_CREATE ;
 int PF_BRIDGE ;
 scalar_t__ RTM_NEWNEIGH ;
 int assert_return (TYPE_1__**,int ) ;
 int message_new (int *,TYPE_1__**,scalar_t__) ;
 TYPE_1__** rtnl_message_type_is_neigh (scalar_t__) ;

int sd_rtnl_message_new_neigh(sd_netlink *rtnl, sd_netlink_message **ret, uint16_t nlmsg_type, int index, int ndm_family) {
        struct ndmsg *ndm;
        int r;

        assert_return(rtnl_message_type_is_neigh(nlmsg_type), -EINVAL);
        assert_return(IN_SET(ndm_family, AF_UNSPEC, AF_INET, AF_INET6, PF_BRIDGE), -EINVAL);
        assert_return(ret, -EINVAL);

        r = message_new(rtnl, ret, nlmsg_type);
        if (r < 0)
                return r;

        if (nlmsg_type == RTM_NEWNEIGH)
                (*ret)->hdr->nlmsg_flags |= NLM_F_CREATE | NLM_F_APPEND;

        ndm = NLMSG_DATA((*ret)->hdr);

        ndm->ndm_family = ndm_family;
        ndm->ndm_ifindex = index;

        return 0;
}
