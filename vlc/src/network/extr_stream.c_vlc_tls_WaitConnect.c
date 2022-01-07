
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vlc_tls_t ;
typedef int val ;
struct pollfd {int fd; int events; } ;
typedef int socklen_t ;


 int EINTR ;
 int POLLOUT ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int errno ;
 scalar_t__ getsockopt (int const,int ,int ,int*,int*) ;
 scalar_t__ vlc_killed () ;
 scalar_t__ vlc_poll_i11e (struct pollfd*,int,int) ;
 int vlc_tls_GetFD (int *) ;

__attribute__((used)) static int vlc_tls_WaitConnect(vlc_tls_t *tls)
{
    const int fd = vlc_tls_GetFD(tls);
    struct pollfd ufd;

    ufd.fd = fd;
    ufd.events = POLLOUT;

    do
    {
        if (vlc_killed())
        {
            errno = EINTR;
            return -1;
        }
    }
    while (vlc_poll_i11e(&ufd, 1, -1) <= 0);

    int val;
    socklen_t len = sizeof (val);

    if (getsockopt(fd, SOL_SOCKET, SO_ERROR, &val, &len))
        return -1;

    if (val != 0)
    {
        errno = val;
        return -1;
    }
    return 0;
}
