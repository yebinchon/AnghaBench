
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int on ;
struct TYPE_4__ {int errNo; } ;
typedef TYPE_1__* FTPCIPtr ;


 int Error (TYPE_1__* const,int ,char*) ;
 int SOL_SOCKET ;
 int SO_OOBINLINE ;
 int kDoPerror ;
 int kErrSetOutOfBandInline ;
 int kNoErr ;
 scalar_t__ setsockopt (int,int ,int ,char*,int) ;

int
SetInlineOutOfBandData(const FTPCIPtr cip, int sockfd)
{
 int on = 1;

 if (setsockopt(sockfd, SOL_SOCKET, SO_OOBINLINE, (char *) &on, (int) sizeof(on)) < 0) {
  Error(cip, kDoPerror, "Could not set out of band inline mode.\n");
  cip->errNo = kErrSetOutOfBandInline;
  return (kErrSetOutOfBandInline);
 }
 return (kNoErr);
}
