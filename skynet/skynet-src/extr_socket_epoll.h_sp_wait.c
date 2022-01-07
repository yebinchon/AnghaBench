
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct event {int write; int read; int error; int eof; int s; } ;
struct TYPE_2__ {int ptr; } ;
struct epoll_event {unsigned int events; TYPE_1__ data; } ;


 unsigned int EPOLLERR ;
 unsigned int EPOLLHUP ;
 unsigned int EPOLLIN ;
 unsigned int EPOLLOUT ;
 int epoll_wait (int,struct epoll_event*,int,int) ;

__attribute__((used)) static int
sp_wait(int efd, struct event *e, int max) {
 struct epoll_event ev[max];
 int n = epoll_wait(efd , ev, max, -1);
 int i;
 for (i=0;i<n;i++) {
  e[i].s = ev[i].data.ptr;
  unsigned flag = ev[i].events;
  e[i].write = (flag & EPOLLOUT) != 0;
  e[i].read = (flag & (EPOLLIN | EPOLLHUP)) != 0;
  e[i].error = (flag & EPOLLERR) != 0;
  e[i].eof = 0;
 }

 return n;
}
