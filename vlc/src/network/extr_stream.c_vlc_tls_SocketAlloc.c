
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * p; int * ops; } ;
typedef TYPE_1__ vlc_tls_t ;
struct TYPE_6__ {int fd; int peer; scalar_t__ peerlen; TYPE_1__ tls; } ;
typedef TYPE_2__ vlc_tls_socket_t ;
struct sockaddr {int dummy; } ;
typedef scalar_t__ socklen_t ;


 TYPE_2__* malloc (scalar_t__) ;
 int memcpy (int ,struct sockaddr const*,scalar_t__) ;
 scalar_t__ unlikely (int ) ;
 int vlc_tls_socket_ops ;

__attribute__((used)) static vlc_tls_t *vlc_tls_SocketAlloc(int fd,
                                      const struct sockaddr *restrict peer,
                                      socklen_t peerlen)
{
    vlc_tls_socket_t *sock = malloc(sizeof (*sock) + peerlen);
    if (unlikely(sock == ((void*)0)))
        return ((void*)0);

    vlc_tls_t *tls = &sock->tls;

    tls->ops = &vlc_tls_socket_ops;
    tls->p = ((void*)0);

    sock->fd = fd;
    sock->peerlen = peerlen;
    if (peerlen > 0)
        memcpy(sock->peer, peer, peerlen);
    return tls;
}
