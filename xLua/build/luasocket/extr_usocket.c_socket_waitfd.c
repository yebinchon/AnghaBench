
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int events; int revents; int fd; } ;
typedef int p_timeout ;
typedef int * p_socket ;


 scalar_t__ EINTR ;
 int IO_CLOSED ;
 int IO_DONE ;
 int IO_TIMEOUT ;
 int POLLERR ;
 int POLLIN ;
 int WAITFD_C ;
 scalar_t__ errno ;
 int poll (struct pollfd*,int,int) ;
 int timeout_getretry (int ) ;
 scalar_t__ timeout_iszero (int ) ;

int socket_waitfd(p_socket ps, int sw, p_timeout tm) {
    int ret;
    struct pollfd pfd;
    pfd.fd = *ps;
    pfd.events = sw;
    pfd.revents = 0;
    if (timeout_iszero(tm)) return IO_TIMEOUT;
    do {
        int t = (int)(timeout_getretry(tm)*1e3);
        ret = poll(&pfd, 1, t >= 0? t: -1);
    } while (ret == -1 && errno == EINTR);
    if (ret == -1) return errno;
    if (ret == 0) return IO_TIMEOUT;
    if (sw == WAITFD_C && (pfd.revents & (POLLIN|POLLERR))) return IO_CLOSED;
    return IO_DONE;
}
