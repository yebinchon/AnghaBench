
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 scalar_t__ SBind (int,int const,int const,int const) ;
 scalar_t__ SListen (int,int) ;
 int SOCK_STREAM ;
 int closesocket (int) ;
 int errno ;
 int kSBindFailed ;
 int kSListenFailed ;
 int kSNewFailed ;
 int socket (int ,int ,int ) ;

int
SNewStreamServer(const int port, const int nTries, const int reuseFlag, int listenQueueSize)
{
 int oerrno;
 int sfd;

 sfd = socket(AF_INET, SOCK_STREAM, 0);
 if (sfd < 0)
  return kSNewFailed;

 if (SBind(sfd, port, nTries, reuseFlag) < 0) {
  oerrno = errno;
  (void) closesocket(sfd);
  errno = oerrno;
  return kSBindFailed;
 }

 if (SListen(sfd, listenQueueSize) < 0) {
  oerrno = errno;
  (void) closesocket(sfd);
  errno = oerrno;
  return kSListenFailed;
 }

 return (sfd);
}
