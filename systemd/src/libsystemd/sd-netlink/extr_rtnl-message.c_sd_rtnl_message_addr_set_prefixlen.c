
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct ifaddrmsg {scalar_t__ ifa_family; unsigned char ifa_prefixlen; } ;
struct TYPE_6__ {struct TYPE_6__* hdr; int nlmsg_type; } ;
typedef TYPE_1__ sd_netlink_message ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int EINVAL ;
 int ERANGE ;
 struct ifaddrmsg* NLMSG_DATA (TYPE_1__*) ;
 int assert_return (TYPE_1__*,int ) ;
 TYPE_1__* rtnl_message_type_is_addr (int ) ;

int sd_rtnl_message_addr_set_prefixlen(sd_netlink_message *m, unsigned char prefixlen) {
        struct ifaddrmsg *ifa;

        assert_return(m, -EINVAL);
        assert_return(m->hdr, -EINVAL);
        assert_return(rtnl_message_type_is_addr(m->hdr->nlmsg_type), -EINVAL);

        ifa = NLMSG_DATA(m->hdr);

        if ((ifa->ifa_family == AF_INET && prefixlen > 32) ||
            (ifa->ifa_family == AF_INET6 && prefixlen > 128))
                return -ERANGE;

        ifa->ifa_prefixlen = prefixlen;

        return 0;
}
