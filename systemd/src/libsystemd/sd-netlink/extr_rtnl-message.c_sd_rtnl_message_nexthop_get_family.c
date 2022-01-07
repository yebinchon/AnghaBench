
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct nhmsg {int nh_family; } ;
struct TYPE_5__ {struct TYPE_5__ const* hdr; } ;
typedef TYPE_1__ sd_netlink_message ;


 int EINVAL ;
 struct nhmsg* NLMSG_DATA (TYPE_1__ const*) ;
 int assert_return (TYPE_1__ const*,int ) ;

int sd_rtnl_message_nexthop_get_family(const sd_netlink_message *m, uint8_t *family) {
        struct nhmsg *nhm;

        assert_return(m, -EINVAL);
        assert_return(m->hdr, -EINVAL);

        nhm = NLMSG_DATA(m->hdr);
        *family = nhm->nh_family ;

        return 0;
}
