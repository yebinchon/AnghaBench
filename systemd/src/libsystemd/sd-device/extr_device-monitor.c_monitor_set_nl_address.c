
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int nl_pid; } ;
union sockaddr_union {TYPE_3__ nl; int sa; } ;
struct sockaddr_nl {int dummy; } ;
typedef int socklen_t ;
struct TYPE_7__ {int nl_pid; } ;
struct TYPE_8__ {TYPE_1__ nl; } ;
struct TYPE_10__ {TYPE_2__ snl; int sock; } ;
typedef TYPE_4__ sd_device_monitor ;


 int assert (TYPE_4__*) ;
 int errno ;
 scalar_t__ getsockname (int ,int *,int*) ;

__attribute__((used)) static int monitor_set_nl_address(sd_device_monitor *m) {
        union sockaddr_union snl;
        socklen_t addrlen;

        assert(m);



        addrlen = sizeof(struct sockaddr_nl);
        if (getsockname(m->sock, &snl.sa, &addrlen) < 0)
                return -errno;

        m->snl.nl.nl_pid = snl.nl.nl_pid;
        return 0;
}
