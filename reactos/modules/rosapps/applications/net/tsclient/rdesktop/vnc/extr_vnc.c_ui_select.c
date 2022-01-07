
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int tv_sec; int tv_usec; } ;
typedef int fd_set ;
struct TYPE_3__ {int maxFd; int clientHead; int allFds; } ;


 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int close (int) ;
 int defer_time ;
 int rfbProcessEvents (TYPE_1__*,int ) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 TYPE_1__* server ;

int
ui_select(int rdpSocket)
{
 fd_set fds;
 struct timeval tv;
 int n, m = server->maxFd;

 if (rdpSocket > m)
  m = rdpSocket;
 while (1)
 {
  fds = server->allFds;
  FD_SET(rdpSocket, &fds);
  tv.tv_sec = defer_time / 1000;
  tv.tv_usec = (defer_time % 1000) * 1000;
  n = select(m + 1, &fds, ((void*)0), ((void*)0), &tv);
  rfbProcessEvents(server, 0);

  if (!server->clientHead)
   close(rdpSocket);
  if (FD_ISSET(rdpSocket, &fds))
   return 1;
 }
 return 0;
}
