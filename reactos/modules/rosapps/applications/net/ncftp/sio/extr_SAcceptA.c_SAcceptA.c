
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vsio_sigproc_t ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int sio_sigproc_t ;


 scalar_t__ EINTR ;
 scalar_t__ ETIMEDOUT ;
 int SIGALRM ;
 int SIGPIPE ;
 int SIG_IGN ;
 int SIOHandler ;
 scalar_t__ SSetjmp (int ) ;
 scalar_t__ SSignal (int ,int ) ;
 int accept (int,struct sockaddr*,int*) ;
 int alarm (unsigned int) ;
 scalar_t__ errno ;
 int gNetTimeoutJmp ;
 int kTimeoutErr ;

int
SAcceptA(int sfd, struct sockaddr_in *const addr, int tlen)
{
 int result;

 vsio_sigproc_t sigalrm, sigpipe;

 size_t size;

 if (tlen < 0) {
  errno = 0;
  for (;;) {
   size = sizeof(struct sockaddr_in);
   result = accept(sfd, (struct sockaddr *) addr, (int *) &size);
   if ((result >= 0) || (errno != EINTR))
    return (result);
  }
 }

 if (SSetjmp(gNetTimeoutJmp) != 0) {
  alarm(0);
  (void) SSignal(SIGALRM, (sio_sigproc_t) sigalrm);
  (void) SSignal(SIGPIPE, (sio_sigproc_t) sigpipe);
  errno = ETIMEDOUT;
  return (kTimeoutErr);
 }

 sigalrm = (vsio_sigproc_t) SSignal(SIGALRM, SIOHandler);
 sigpipe = (vsio_sigproc_t) SSignal(SIGPIPE, SIG_IGN);
 alarm((unsigned int) tlen);

 errno = 0;
 do {
  size = sizeof(struct sockaddr_in);
  result = accept(sfd, (struct sockaddr *) addr, (int *) &size);
 } while ((result < 0) && (errno == EINTR));

 alarm(0);
 (void) SSignal(SIGALRM, (sio_sigproc_t) sigalrm);
 (void) SSignal(SIGPIPE, (sio_sigproc_t) sigpipe);
 return (result);



}
