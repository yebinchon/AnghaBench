
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int fcntl (int,int ,...) ;

void
setblocking(int fd, int state)
{
 int mode;

 if ((mode = fcntl(fd, F_GETFL)) != -1) {
  if (!state)
   mode |= O_NONBLOCK;
  else
   mode &= ~O_NONBLOCK;
  fcntl(fd, F_SETFL, mode);
 }
}
