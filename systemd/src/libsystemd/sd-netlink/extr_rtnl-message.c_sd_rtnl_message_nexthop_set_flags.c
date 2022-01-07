
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct nhmsg {int nh_flags; } ;
struct TYPE_6__ {struct TYPE_6__* hdr; int nlmsg_type; } ;
typedef TYPE_1__ sd_netlink_message ;


 int EINVAL ;
 struct nhmsg* NLMSG_DATA (TYPE_1__*) ;
 int assert_return (TYPE_1__*,int ) ;
 TYPE_1__* rtnl_message_type_is_nexthop (int ) ;

int sd_rtnl_message_nexthop_set_flags(sd_netlink_message *m, uint8_t flags) {
        struct nhmsg *nhm;

        assert_return(m, -EINVAL);
        assert_return(m->hdr, -EINVAL);
        assert_return(rtnl_message_type_is_nexthop(m->hdr->nlmsg_type), -EINVAL);

        nhm = NLMSG_DATA(m->hdr);
        nhm->nh_flags |= flags;

        return 0;
}
