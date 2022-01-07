
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptr; } ;
struct epoll_event {int events; TYPE_1__ data; int member_0; } ;
typedef int strm_stream ;
typedef int strm_callback ;


 int EPOLLIN ;
 int EPOLLONESHOT ;
 int EPOLL_CTL_ADD ;
 int epoll_ctl (int ,int ,int,struct epoll_event*) ;
 int epoll_fd ;
 int io_task (int *,int ) ;

__attribute__((used)) static int
io_push(int fd, strm_stream* strm, strm_callback cb)
{
  struct epoll_event ev = { 0 };

  ev.events = EPOLLIN | EPOLLONESHOT;
  ev.data.ptr = io_task(strm, cb);
  return epoll_ctl(epoll_fd, EPOLL_CTL_ADD, fd, &ev);
}
