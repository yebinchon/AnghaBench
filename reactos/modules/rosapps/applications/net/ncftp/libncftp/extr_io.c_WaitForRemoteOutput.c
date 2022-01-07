
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
typedef int fd_set ;
struct TYPE_4__ {int xferTimeout; int dataSocket; int cancelXfer; int stalled; int dataTimedOut; } ;
typedef TYPE_1__* FTPCIPtr ;


 scalar_t__ EINTR ;
 int FD_SET (int,int*) ;
 int FD_ZERO (int*) ;
 int FTPUpdateIOTimer (TYPE_1__* const) ;
 int SELECT_TYPE_ARG234 ;
 int SIGALRM ;
 scalar_t__ errno ;
 int getpid () ;
 int kill (int ,int ) ;
 int perror (char*) ;
 int select (int,int *,int,int,struct timeval*) ;

__attribute__((used)) static int
WaitForRemoteOutput(const FTPCIPtr cip)
{
 fd_set ss, ss2;
 struct timeval tv;
 int result;
 int fd;
 int wsecs;
 int xferTimeout;
 int ocancelXfer;

 xferTimeout = cip->xferTimeout;
 if (xferTimeout < 1)
  return (1);

 fd = cip->dataSocket;
 if (fd < 0)
  return (1);

 ocancelXfer = cip->cancelXfer;
 wsecs = 0;
 cip->stalled = 0;

 while ((xferTimeout <= 0) || (wsecs < xferTimeout)) {
  if ((cip->cancelXfer != 0) && (ocancelXfer == 0)) {

   return (1);
  }
  FD_ZERO(&ss);
  FD_SET(fd, &ss);
  ss2 = ss;
  tv.tv_sec = 1;
  tv.tv_usec = 0;
  result = select(fd + 1, ((void*)0), SELECT_TYPE_ARG234 &ss, SELECT_TYPE_ARG234 &ss2, &tv);
  if (result == 1) {

   cip->stalled = 0;
   return (1);
  } else if (result < 0) {
   if (errno != EINTR) {
    perror("select");
    cip->stalled = 0;
    return (1);
   }
  } else {
   wsecs++;
   cip->stalled = wsecs;
  }
  FTPUpdateIOTimer(cip);
 }





 (void) kill(getpid(), SIGALRM);


 cip->dataTimedOut = 1;
 return (0);
}
