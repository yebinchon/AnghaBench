
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int evutil_socket_t ;


 int FIONBIO ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 scalar_t__ SOCKET_ERROR ;
 int ccnet_warning (char*,int) ;
 int fcntl (int,int ,int) ;
 scalar_t__ ioctlsocket (int,int ,int *) ;

int
ccnet_net_make_socket_blocking(evutil_socket_t fd)
{
 {
  int flags;
  if ((flags = fcntl(fd, F_GETFL, ((void*)0))) < 0) {
   ccnet_warning ("fcntl(%d, F_GETFL)", fd);
   return -1;
  }
  if (fcntl(fd, F_SETFL, flags & ~O_NONBLOCK) == -1) {
   ccnet_warning ("fcntl(%d, F_SETFL)", fd);
   return -1;
  }
 }

 return 0;
}
