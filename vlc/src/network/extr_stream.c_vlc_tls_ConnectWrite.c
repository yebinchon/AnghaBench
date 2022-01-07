
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * ops; } ;
typedef TYPE_1__ vlc_tls_t ;
struct TYPE_8__ {int fd; int peerlen; int peer; } ;
typedef TYPE_2__ vlc_tls_socket_t ;
struct msghdr {unsigned int msg_iovlen; struct iovec* msg_iov; int msg_namelen; int msg_name; } ;
struct iovec {int dummy; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EINPROGRESS ;
 scalar_t__ EOPNOTSUPP ;
 int MSG_FASTOPEN ;
 int MSG_NOSIGNAL ;
 scalar_t__ errno ;
 scalar_t__ sendmsg (int ,struct msghdr const*,int) ;
 scalar_t__ vlc_tls_Connect (TYPE_1__*) ;
 scalar_t__ vlc_tls_SocketWrite (TYPE_1__*,struct iovec const*,unsigned int) ;
 scalar_t__ vlc_tls_WaitConnect (TYPE_1__*) ;
 int vlc_tls_socket_ops ;

__attribute__((used)) static ssize_t vlc_tls_ConnectWrite(vlc_tls_t *tls,
                                    const struct iovec *iov,unsigned count)
{

    tls->ops = &vlc_tls_socket_ops;
    if (vlc_tls_Connect(tls))
        return -1;

    return vlc_tls_SocketWrite(tls, iov, count);
}
