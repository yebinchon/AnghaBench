
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int opt ;
struct TYPE_3__ {int errNo; } ;
typedef TYPE_1__* FTPCIPtr ;


 int SOL_SOCKET ;
 int SO_KEEPALIVE ;
 int kErrSetKeepAlive ;
 int kNoErr ;
 scalar_t__ setsockopt (int,int ,int ,char*,int) ;

int
SetKeepAlive(const FTPCIPtr cip, int sockfd)
{

 cip->errNo = kErrSetKeepAlive;
 return (kErrSetKeepAlive);
}
