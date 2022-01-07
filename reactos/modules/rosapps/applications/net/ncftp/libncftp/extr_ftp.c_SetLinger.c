
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct linger {int l_onoff; int l_linger; } ;
typedef int li ;
struct TYPE_3__ {int errNo; } ;
typedef TYPE_1__* FTPCIPtr ;


 int SOL_SOCKET ;
 int SO_LINGER ;
 int kErrSetLinger ;
 int kNoErr ;
 scalar_t__ setsockopt (int,int ,int ,char*,int) ;

int
SetLinger(const FTPCIPtr cip, int sockfd, int onoff)
{

 cip->errNo = kErrSetLinger;
 return (kErrSetLinger);
}
