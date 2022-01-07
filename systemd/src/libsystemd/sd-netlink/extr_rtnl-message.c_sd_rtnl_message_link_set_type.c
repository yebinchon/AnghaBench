
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ifinfomsg {unsigned int ifi_type; } ;
struct TYPE_6__ {struct TYPE_6__* hdr; int nlmsg_type; } ;
typedef TYPE_1__ sd_netlink_message ;


 int EINVAL ;
 struct ifinfomsg* NLMSG_DATA (TYPE_1__*) ;
 int assert_return (TYPE_1__*,int ) ;
 TYPE_1__* rtnl_message_type_is_link (int ) ;

int sd_rtnl_message_link_set_type(sd_netlink_message *m, unsigned type) {
        struct ifinfomsg *ifi;

        assert_return(m, -EINVAL);
        assert_return(m->hdr, -EINVAL);
        assert_return(rtnl_message_type_is_link(m->hdr->nlmsg_type), -EINVAL);

        ifi = NLMSG_DATA(m->hdr);

        ifi->ifi_type = type;

        return 0;
}
