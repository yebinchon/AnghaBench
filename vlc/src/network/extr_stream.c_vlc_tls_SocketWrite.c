
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


 int MSG_NOSIGNAL ;
 int sendmsg (int ,struct msghdr const*,int ) ;

__attribute__((used)) static ssize_t vlc_tls_SocketWrite(vlc_tls_t *tls, const struct iovec *iov,
                                   unsigned count)
{
    vlc_tls_socket_t *sock = (struct vlc_tls_socket *)tls;
    const struct msghdr msg =
    {
        .msg_iov = (struct iovec *)iov,
        .msg_iovlen = count,
    };

    return sendmsg(sock->fd, &msg, MSG_NOSIGNAL);
}
