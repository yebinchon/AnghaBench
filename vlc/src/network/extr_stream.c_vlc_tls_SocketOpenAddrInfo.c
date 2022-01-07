
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * ops; } ;
typedef TYPE_1__ vlc_tls_t ;
struct addrinfo {int dummy; } ;


 scalar_t__ vlc_tls_Connect (TYPE_1__*) ;
 int vlc_tls_SessionDelete (TYPE_1__*) ;
 TYPE_1__* vlc_tls_SocketAddrInfo (struct addrinfo const*) ;
 int vlc_tls_socket_fastopen_ops ;

vlc_tls_t *vlc_tls_SocketOpenAddrInfo(const struct addrinfo *restrict info,
                                      bool defer_connect)
{
    vlc_tls_t *sock = vlc_tls_SocketAddrInfo(info);
    if (sock == ((void*)0))
        return ((void*)0);

    if (defer_connect)
    {

        sock->ops = &vlc_tls_socket_fastopen_ops;
    }
    else
    {
        if (vlc_tls_Connect(sock))
        {
            vlc_tls_SessionDelete(sock);
            sock = ((void*)0);
        }
    }
    return sock;
}
