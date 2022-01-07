
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_t ;
struct vlc_tls_socket {int fd; } ;
typedef struct vlc_tls_socket vlc_tls_socket_t ;
struct msghdr {unsigned int msg_iovlen; struct iovec* msg_iov; } ;
struct iovec {int dummy; } ;
typedef int ssize_t ;


 int recvmsg (int ,struct msghdr*,int ) ;

__attribute__((used)) static ssize_t vlc_tls_SocketRead(vlc_tls_t *tls, struct iovec *iov,
                                  unsigned count)
{
    vlc_tls_socket_t *sock = (struct vlc_tls_socket *)tls;
    struct msghdr msg =
    {
        .msg_iov = iov,
        .msg_iovlen = count,
    };

    return recvmsg(sock->fd, &msg, 0);
}
