
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int socket_mode; int directory_mode; int transparent; int free_bind; int reuse_port; int bind_to_device; int bind_ipv6_only; int backlog; } ;
typedef TYPE_1__ SocketAddress ;
typedef TYPE_1__ const Socket ;


 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;
 int assert (TYPE_1__ const*) ;
 int socket_address_listen (TYPE_1__ const*,int,int ,int ,int ,int ,int ,int ,int ,int ,char const*) ;

__attribute__((used)) static int socket_address_listen_do(
                Socket *s,
                const SocketAddress *address,
                const char *label) {

        assert(s);
        assert(address);

        return socket_address_listen(
                        address,
                        SOCK_CLOEXEC|SOCK_NONBLOCK,
                        s->backlog,
                        s->bind_ipv6_only,
                        s->bind_to_device,
                        s->reuse_port,
                        s->free_bind,
                        s->transparent,
                        s->directory_mode,
                        s->socket_mode,
                        label);
}
