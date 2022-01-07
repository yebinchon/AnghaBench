
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 scalar_t__ epoll_create (int) ;
 scalar_t__ epoll_fd ;
 int io_loop ;
 int io_worker ;
 int pthread_create (int *,int *,int ,int *) ;

void
strm_init_io_loop()
{
  epoll_fd = epoll_create(10);
  assert(epoll_fd >= 0);
  pthread_create(&io_worker, ((void*)0), io_loop, ((void*)0));
}
