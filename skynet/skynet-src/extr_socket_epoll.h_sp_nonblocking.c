
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int fcntl (int,int ,int) ;

__attribute__((used)) static void
sp_nonblocking(int fd) {
 int flag = fcntl(fd, F_GETFL, 0);
 if ( -1 == flag ) {
  return;
 }

 fcntl(fd, F_SETFL, flag | O_NONBLOCK);
}
