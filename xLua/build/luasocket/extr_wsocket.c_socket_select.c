
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ t_socket ;
struct timeval {int tv_sec; int tv_usec; } ;
typedef int p_timeout ;
typedef int fd_set ;
typedef int DWORD ;


 int Sleep (int ) ;
 int select (int ,int *,int *,int *,struct timeval*) ;
 double timeout_get (int ) ;

int socket_select(t_socket n, fd_set *rfds, fd_set *wfds, fd_set *efds,
        p_timeout tm) {
    struct timeval tv;
    double t = timeout_get(tm);
    tv.tv_sec = (int) t;
    tv.tv_usec = (int) ((t - tv.tv_sec) * 1.0e6);
    if (n <= 0) {
        Sleep((DWORD) (1000*t));
        return 0;
    } else return select(0, rfds, wfds, efds, t >= 0.0? &tv: ((void*)0));
}
