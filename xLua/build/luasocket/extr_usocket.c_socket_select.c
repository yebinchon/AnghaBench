
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t_socket ;
struct timeval {int tv_sec; int tv_usec; } ;
typedef int p_timeout ;
typedef int fd_set ;


 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int select (int ,int *,int *,int *,struct timeval*) ;
 double timeout_getretry (int ) ;

int socket_select(t_socket n, fd_set *rfds, fd_set *wfds, fd_set *efds,
        p_timeout tm) {
    int ret;
    do {
        struct timeval tv;
        double t = timeout_getretry(tm);
        tv.tv_sec = (int) t;
        tv.tv_usec = (int) ((t - tv.tv_sec) * 1.0e6);

        ret = select(n, rfds, wfds, efds, t >= 0.0 ? &tv: ((void*)0));
    } while (ret < 0 && errno == EINTR);
    return ret;
}
