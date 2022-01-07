
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct msghdr {int msg_iovlen; int msg_namelen; struct iovec* msg_iov; struct sockaddr* msg_name; } ;
struct iovec {void* iov_base; size_t iov_len; } ;
typedef scalar_t__ ssize_t ;
typedef int socklen_t ;


 scalar_t__ vlc_recvmsg_i11e (int,struct msghdr*,int) ;

ssize_t vlc_recvfrom_i11e(int fd, void *buf, size_t len, int flags,
                        struct sockaddr *addr, socklen_t *addrlen)
{
    struct iovec iov = { .iov_base = buf, .iov_len = len };
    struct msghdr msg = {
        .msg_name = addr,
        .msg_namelen = (addrlen != ((void*)0)) ? *addrlen : 0,
        .msg_iov = &iov,
        .msg_iovlen = 1,
    };

    ssize_t ret = vlc_recvmsg_i11e(fd, &msg, flags);
    if (ret >= 0 && addrlen != ((void*)0))
        *addrlen = msg.msg_namelen;
    return ret;
}
