
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tosType ;
struct TYPE_3__ {int errNo; } ;
typedef TYPE_1__* FTPCIPtr ;


 int IPPROTO_IP ;
 int IP_TOS ;
 int kErrSetTypeOfService ;
 int kNoErr ;
 scalar_t__ setsockopt (int,int ,int ,char*,int) ;

int
SetTypeOfService(const FTPCIPtr cip, int sockfd, int tosType)
{



 if (setsockopt(sockfd, IPPROTO_IP, IP_TOS, (char *) &tosType, (int) sizeof(tosType)) < 0) {

  cip->errNo = kErrSetTypeOfService;
  return (kErrSetTypeOfService);
 }
 return (kNoErr);
}
