
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_sec; int tv_usec; } ;
typedef int p_timeout ;
typedef int * p_socket ;
typedef int fd_set ;


 scalar_t__ FD_ISSET (int ,int *) ;
 int FD_SET (int ,int *) ;
 int FD_ZERO (int *) ;
 int IO_CLOSED ;
 int IO_DONE ;
 int IO_TIMEOUT ;
 int WAITFD_C ;
 int WAITFD_R ;
 int WAITFD_W ;
 int WSAGetLastError () ;
 int select (int ,int *,int *,int *,struct timeval*) ;
 double timeout_get (int ) ;
 scalar_t__ timeout_iszero (int ) ;

int socket_waitfd(p_socket ps, int sw, p_timeout tm) {
    int ret;
    fd_set rfds, wfds, efds, *rp = ((void*)0), *wp = ((void*)0), *ep = ((void*)0);
    struct timeval tv, *tp = ((void*)0);
    double t;
    if (timeout_iszero(tm)) return IO_TIMEOUT;
    if (sw & WAITFD_R) {
        FD_ZERO(&rfds);
        FD_SET(*ps, &rfds);
        rp = &rfds;
    }
    if (sw & WAITFD_W) { FD_ZERO(&wfds); FD_SET(*ps, &wfds); wp = &wfds; }
    if (sw & WAITFD_C) { FD_ZERO(&efds); FD_SET(*ps, &efds); ep = &efds; }
    if ((t = timeout_get(tm)) >= 0.0) {
        tv.tv_sec = (int) t;
        tv.tv_usec = (int) ((t-tv.tv_sec)*1.0e6);
        tp = &tv;
    }
    ret = select(0, rp, wp, ep, tp);
    if (ret == -1) return WSAGetLastError();
    if (ret == 0) return IO_TIMEOUT;
    if (sw == WAITFD_C && FD_ISSET(*ps, &efds)) return IO_CLOSED;
    return IO_DONE;
}
