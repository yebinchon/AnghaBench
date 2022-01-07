
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {void* errNo; } ;
typedef TYPE_1__* FTPCIPtr ;


 int Error (TYPE_1__* const,int ,char*) ;
 scalar_t__ getsockname (int,struct sockaddr*,int*) ;
 int kDoPerror ;
 void* kErrGetSockName ;

__attribute__((used)) static int
GetSocketAddress(const FTPCIPtr cip, int sockfd, struct sockaddr_in *saddr)
{
 int len = (int) sizeof (struct sockaddr_in);
 int result = 0;

 if (getsockname(sockfd, (struct sockaddr *)saddr, &len) < 0) {
  Error(cip, kDoPerror, "Could not get socket name.\n");
  cip->errNo = kErrGetSockName;
  result = kErrGetSockName;
 }
 return (result);
}
