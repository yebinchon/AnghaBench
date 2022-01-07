
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_t ;
struct vlc_tls_socket {int fd; } ;
typedef struct vlc_tls_socket vlc_tls_socket_t ;



__attribute__((used)) static int vlc_tls_SocketGetFD(vlc_tls_t *tls, short *restrict events)
{
    vlc_tls_socket_t *sock = (struct vlc_tls_socket *)tls;

    (void) events;
    return sock->fd;
}
