
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef union sockaddr_union {int dummy; } sockaddr_union ;
struct sockaddr_un {int dummy; } ;
struct TYPE_7__ {scalar_t__* sun_path; } ;
struct TYPE_8__ {TYPE_1__ un; } ;
struct TYPE_9__ {TYPE_2__ sockaddr; } ;
typedef TYPE_3__ SocketAddress ;


 scalar_t__ AF_UNIX ;
 int assert (TYPE_3__ const*) ;
 int assert_cc (int) ;
 scalar_t__ socket_address_family (TYPE_3__ const*) ;

const char* socket_address_get_path(const SocketAddress *a) {
        assert(a);

        if (socket_address_family(a) != AF_UNIX)
                return ((void*)0);

        if (a->sockaddr.un.sun_path[0] == 0)
                return ((void*)0);




        assert_cc(sizeof(union sockaddr_union) >= sizeof(struct sockaddr_un)+1);
        return a->sockaddr.un.sun_path;
}
