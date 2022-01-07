
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int nlmsg_seq; struct TYPE_4__* hdr; } ;
typedef TYPE_1__ sd_netlink_message ;


 int assert (TYPE_1__*) ;

uint32_t rtnl_message_get_serial(sd_netlink_message *m) {
        assert(m);
        assert(m->hdr);

        return m->hdr->nlmsg_seq;
}
