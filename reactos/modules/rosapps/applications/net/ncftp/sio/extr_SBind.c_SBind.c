
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int on ;


 int AF_INET ;
 int INADDR_ANY ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int SO_REUSEPORT ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int htonl (int ) ;
 int htons (unsigned short) ;
 int const kReUseAddrNo ;
 int setsockopt (int,int ,int ,char*,int) ;
 int sleep (unsigned int) ;

int
SBind(int sockfd, const int port, const int nTries, const int reuseFlag)
{
 unsigned int i;
 int on;
 int onsize;
 struct sockaddr_in localAddr;

 localAddr.sin_family = AF_INET;
 localAddr.sin_addr.s_addr = htonl(INADDR_ANY);
 localAddr.sin_port = htons((unsigned short) port);

 if (reuseFlag != kReUseAddrNo) {




  on = 1;
  onsize = (int) sizeof(on);
  (void) setsockopt(sockfd, SOL_SOCKET, SO_REUSEADDR,
   (char *) &on, onsize);
 }

 for (i=1; ; i++) {



  if (bind(sockfd, (struct sockaddr *) &localAddr, sizeof(struct sockaddr_in)) == 0) {
   break;
  }
  if ((int) i == nTries) {
   return (-1);
  }



  sleep(i * 3);
 }

 return (0);
}
