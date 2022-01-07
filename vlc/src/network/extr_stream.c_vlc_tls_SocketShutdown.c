
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_t ;
struct vlc_tls_socket {int fd; } ;
typedef struct vlc_tls_socket vlc_tls_socket_t ;


 int SHUT_RDWR ;
 int SHUT_WR ;
 int shutdown (int ,int ) ;

__attribute__((used)) static int vlc_tls_SocketShutdown(vlc_tls_t *tls, bool duplex)
{
    vlc_tls_socket_t *sock = (struct vlc_tls_socket *)tls;

    return shutdown(sock->fd, duplex ? SHUT_RDWR : SHUT_WR);
}
