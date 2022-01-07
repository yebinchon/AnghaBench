
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ops; } ;
typedef TYPE_2__ vlc_tls_t ;
struct pollfd {int events; int fd; } ;
struct iovec {char* iov_base; size_t iov_len; } ;
typedef int ssize_t ;
struct TYPE_6__ {int (* writev ) (TYPE_2__*,struct iovec*,int) ;} ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int POLLOUT ;
 scalar_t__ errno ;
 int stub1 (TYPE_2__*,struct iovec*,int) ;
 scalar_t__ vlc_killed () ;
 int vlc_poll_i11e (struct pollfd*,int,int) ;
 int vlc_tls_GetPollFD (TYPE_2__*,int *) ;

ssize_t vlc_tls_Write(vlc_tls_t *session, const void *buf, size_t len)
{
    struct pollfd ufd;
    struct iovec iov;

    ufd.events = POLLOUT;
    ufd.fd = vlc_tls_GetPollFD(session, &ufd.events);
    iov.iov_base = (void *)buf;
    iov.iov_len = len;

    for (size_t sent = 0;;)
    {
        if (vlc_killed())
        {
            errno = EINTR;
            return -1;
        }

        ssize_t val = session->ops->writev(session, &iov, 1);
        if (val > 0)
        {
            iov.iov_base = ((char *)iov.iov_base) + val;
            iov.iov_len -= val;
            sent += val;
        }
        if (iov.iov_len == 0 || val == 0)
            return sent;
        if (val == -1)
        {
            if (vlc_killed())
                return -1;
            if (errno != EINTR && errno != EAGAIN)
                return sent ? (ssize_t)sent : -1;
        }

        vlc_poll_i11e(&ufd, 1, -1);
    }
}
