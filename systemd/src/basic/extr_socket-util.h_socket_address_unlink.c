
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int un; } ;
struct TYPE_6__ {TYPE_1__ sockaddr; } ;
typedef TYPE_2__ SocketAddress ;


 scalar_t__ AF_UNIX ;
 int sockaddr_un_unlink (int *) ;
 scalar_t__ socket_address_family (TYPE_2__ const*) ;

__attribute__((used)) static inline int socket_address_unlink(const SocketAddress *a) {
        return socket_address_family(a) == AF_UNIX ? sockaddr_un_unlink(&a->sockaddr.un) : 0;
}
