
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ptr; } ;
struct epoll_event {TYPE_1__ data; int events; } ;


 int EPOLLIN ;
 int EPOLL_CTL_ADD ;
 int epoll_ctl (int,int ,int,struct epoll_event*) ;

__attribute__((used)) static int
sp_add(int efd, int sock, void *ud) {
 struct epoll_event ev;
 ev.events = EPOLLIN;
 ev.data.ptr = ud;
 if (epoll_ctl(efd, EPOLL_CTL_ADD, sock, &ev) == -1) {
  return 1;
 }
 return 0;
}
