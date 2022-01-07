
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vlc_tls_t ;
struct TYPE_2__ {int peerlen; int peer; int fd; } ;
typedef TYPE_1__ vlc_tls_socket_t ;
typedef int ssize_t ;


 scalar_t__ EINPROGRESS ;
 scalar_t__ WSAEWOULDBLOCK ;
 scalar_t__ WSAGetLastError () ;
 scalar_t__ connect (int ,int ,int ) ;
 scalar_t__ errno ;
 int vlc_tls_WaitConnect (int *) ;

__attribute__((used)) static ssize_t vlc_tls_Connect(vlc_tls_t *tls)
{
    const vlc_tls_socket_t *sock = (vlc_tls_socket_t *)tls;

    if (connect(sock->fd, sock->peer, sock->peerlen) == 0)
        return 0;

    if (errno != EINPROGRESS)
        return -1;




    return vlc_tls_WaitConnect(tls);
}
