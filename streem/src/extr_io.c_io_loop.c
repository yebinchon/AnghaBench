
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ptr; } ;
struct epoll_event {TYPE_1__ data; } ;


 int MAX_EVENTS ;
 int epoll_fd ;
 int epoll_wait (int ,struct epoll_event*,int,int) ;
 int io_task_add (int ) ;

__attribute__((used)) static void*
io_loop(void* d)
{
  struct epoll_event events[MAX_EVENTS];
  int i, n;

  for (;;) {
    n = epoll_wait(epoll_fd, events, MAX_EVENTS, -1);
    if (n < 0) {
      return ((void*)0);
    }
    for (i=0; i<n; i++) {
      io_task_add(events[i].data.ptr);
    }
  }
  return ((void*)0);
}
