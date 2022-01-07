
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct ndmsg {int ndm_flags; } ;
struct TYPE_6__ {struct TYPE_6__ const* hdr; int nlmsg_type; } ;
typedef TYPE_1__ sd_netlink_message ;


 int EINVAL ;
 struct ndmsg* NLMSG_DATA (TYPE_1__ const*) ;
 int assert_return (TYPE_1__ const*,int ) ;
 TYPE_1__ const* rtnl_message_type_is_neigh (int ) ;

int sd_rtnl_message_neigh_get_flags(const sd_netlink_message *m, uint8_t *flags) {
        struct ndmsg *ndm;

        assert_return(m, -EINVAL);
        assert_return(m->hdr, -EINVAL);
        assert_return(rtnl_message_type_is_neigh(m->hdr->nlmsg_type), -EINVAL);

        ndm = NLMSG_DATA(m->hdr);
        *flags = ndm->ndm_flags;

        return 0;
}
