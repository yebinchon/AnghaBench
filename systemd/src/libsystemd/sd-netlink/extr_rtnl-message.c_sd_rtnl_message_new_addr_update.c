
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* hdr; } ;
typedef TYPE_2__ sd_netlink_message ;
typedef int sd_netlink ;
struct TYPE_5__ {int nlmsg_flags; } ;


 int NLM_F_REPLACE ;
 int RTM_NEWADDR ;
 int sd_rtnl_message_new_addr (int *,TYPE_2__**,int ,int,int) ;

int sd_rtnl_message_new_addr_update(sd_netlink *rtnl, sd_netlink_message **ret,
                             int index, int family) {
        int r;

        r = sd_rtnl_message_new_addr(rtnl, ret, RTM_NEWADDR, index, family);
        if (r < 0)
                return r;

        (*ret)->hdr->nlmsg_flags |= NLM_F_REPLACE;

        return 0;
}
