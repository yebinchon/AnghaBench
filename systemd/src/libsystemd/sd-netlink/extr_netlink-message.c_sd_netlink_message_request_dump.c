
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nlmsg_flags; struct TYPE_5__* hdr; int nlmsg_type; } ;
typedef TYPE_1__ sd_netlink_message ;


 int EINVAL ;
 TYPE_1__* IN_SET (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int NLM_F_DUMP ;
 int RTM_GETADDR ;
 int RTM_GETADDRLABEL ;
 int RTM_GETLINK ;
 int RTM_GETNEIGH ;
 int RTM_GETNEXTHOP ;
 int RTM_GETROUTE ;
 int RTM_GETRULE ;
 int SET_FLAG (int ,int ,int) ;
 int assert_return (TYPE_1__*,int ) ;

int sd_netlink_message_request_dump(sd_netlink_message *m, int dump) {
        assert_return(m, -EINVAL);
        assert_return(m->hdr, -EINVAL);

        assert_return(IN_SET(m->hdr->nlmsg_type, RTM_GETLINK, RTM_GETADDR, RTM_GETROUTE, RTM_GETNEIGH,
                             RTM_GETRULE, RTM_GETADDRLABEL, RTM_GETNEXTHOP), -EINVAL);

        SET_FLAG(m->hdr->nlmsg_flags, NLM_F_DUMP, dump);

        return 0;
}
