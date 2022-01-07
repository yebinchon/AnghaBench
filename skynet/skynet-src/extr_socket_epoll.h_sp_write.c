
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;


 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLL_CTL_MOD ;
 int epoll_ctl (int,int ,int,struct epoll_event*) ;

__attribute__((used)) static void
sp_write(int efd, int sock, void *ud, bool enable) {
 struct epoll_event ev;
 ev.events = EPOLLIN | (enable ? EPOLLOUT : 0);
 ev.data.ptr = ud;
 epoll_ctl(efd, EPOLL_CTL_MOD, sock, &ev);
}
