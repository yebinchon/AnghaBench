
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int sock_t ;


 int AF_INET6 ;
 int IPPROTO_TCP ;
 int SOCK_STREAM ;
 int TCP_MAX_BACKLOG ;
 scalar_t__ bind_to_port (int ,int,int ) ;
 int kill_sock (int ) ;
 scalar_t__ listen (int ,int ) ;
 int set_socket_dualstack (int ) ;
 int set_socket_nonblock (int ) ;
 int set_socket_reuseaddr (int ) ;
 int sock_valid (int ) ;
 int socket (int,int ,int ) ;

__attribute__((used)) static sock_t new_listening_TCP_socket(int family, uint16_t port)
{
    sock_t sock = socket(family, SOCK_STREAM, IPPROTO_TCP);

    if (!sock_valid(sock)) {
        return ~0;
    }

    int ok = set_socket_nonblock(sock);

    if (ok && family == AF_INET6) {
        ok = set_socket_dualstack(sock);
    }

    if (ok) {
        ok = set_socket_reuseaddr(sock);
    }

    ok = ok && bind_to_port(sock, family, port) && (listen(sock, TCP_MAX_BACKLOG) == 0);

    if (!ok) {
        kill_sock(sock);
        return ~0;
    }

    return sock;
}
