
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nlmsg_type; struct TYPE_4__ const* hdr; } ;
typedef TYPE_1__ sd_netlink_message ;


 scalar_t__ NLMSG_ERROR ;
 int assert_return (TYPE_1__ const*,int ) ;

int sd_netlink_message_is_error(const sd_netlink_message *m) {
        assert_return(m, 0);
        assert_return(m->hdr, 0);

        return m->hdr->nlmsg_type == NLMSG_ERROR;
}
