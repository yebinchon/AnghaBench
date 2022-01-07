
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int socklen_t ;
struct TYPE_5__ {int sa; } ;
struct TYPE_6__ {TYPE_1__ sockaddr; int fd; } ;
typedef TYPE_2__ sd_netlink ;


 int EINVAL ;
 int NETLINK_PKTINFO ;
 int SOL_NETLINK ;
 int bind (int ,int *,int) ;
 int broadcast_groups_get (TYPE_2__*) ;
 int errno ;
 int getsockname (int ,int *,int*) ;
 int setsockopt_int (int ,int ,int ,int) ;

int socket_bind(sd_netlink *nl) {
        socklen_t addrlen;
        int r;

        r = setsockopt_int(nl->fd, SOL_NETLINK, NETLINK_PKTINFO, 1);
        if (r < 0)
                return r;

        addrlen = sizeof(nl->sockaddr);

        r = bind(nl->fd, &nl->sockaddr.sa, addrlen);

        if (r < 0 && errno != EINVAL)
                return -errno;

        r = getsockname(nl->fd, &nl->sockaddr.sa, &addrlen);
        if (r < 0)
                return -errno;

        r = broadcast_groups_get(nl);
        if (r < 0)
                return r;

        return 0;
}
