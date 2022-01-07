
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int adns_state ;
typedef int ADNS_SOCKET ;


 int FIONBIO ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int errno ;
 int fcntl (int ,int ,int) ;
 scalar_t__ ioctlsocket (int ,int ,unsigned long*) ;

int adns__setnonblock(adns_state ads, ADNS_SOCKET fd) {




  int r;

  r= fcntl(fd,F_GETFL,0); if (r<0) return errno;
  r |= O_NONBLOCK;
  r= fcntl(fd,F_SETFL,r); if (r<0) return errno;
  return 0;

}
