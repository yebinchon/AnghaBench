
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int socklen_t ;
typedef int p_timeout ;
typedef scalar_t__* p_socket ;
typedef int SA ;


 int EAGAIN ;
 int EINTR ;
 int EPIPE ;
 int IO_CLOSED ;
 int IO_DONE ;
 int IO_UNKNOWN ;
 scalar_t__ SOCKET_INVALID ;
 int WAITFD_W ;
 int errno ;
 scalar_t__ sendto (scalar_t__,char const*,size_t,int ,int *,int ) ;
 int socket_waitfd (scalar_t__*,int ,int ) ;

int socket_sendto(p_socket ps, const char *data, size_t count, size_t *sent,
        SA *addr, socklen_t len, p_timeout tm)
{
    int err;
    *sent = 0;
    if (*ps == SOCKET_INVALID) return IO_CLOSED;
    for ( ;; ) {
        long put = (long) sendto(*ps, data, count, 0, addr, len);
        if (put >= 0) {
            *sent = put;
            return IO_DONE;
        }
        err = errno;
        if (err == EPIPE) return IO_CLOSED;
        if (err == EINTR) continue;
        if (err != EAGAIN) return err;
        if ((err = socket_waitfd(ps, WAITFD_W, tm)) != IO_DONE) return err;
    }
    return IO_UNKNOWN;
}
