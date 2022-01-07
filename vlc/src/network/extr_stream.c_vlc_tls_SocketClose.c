
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_t ;
struct vlc_tls_socket {int fd; } ;
typedef struct vlc_tls_socket vlc_tls_socket_t ;


 int free (int *) ;
 int net_Close (int ) ;

__attribute__((used)) static void vlc_tls_SocketClose(vlc_tls_t *tls)
{
    vlc_tls_socket_t *sock = (struct vlc_tls_socket *)tls;

    net_Close(sock->fd);
    free(tls);
}
