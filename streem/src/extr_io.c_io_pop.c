
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPOLL_CTL_DEL ;
 int epoll_ctl (int ,int ,int,int *) ;
 int epoll_fd ;

__attribute__((used)) static int
io_pop(int fd)
{
  return epoll_ctl(epoll_fd, EPOLL_CTL_DEL, fd, ((void*)0));
}
