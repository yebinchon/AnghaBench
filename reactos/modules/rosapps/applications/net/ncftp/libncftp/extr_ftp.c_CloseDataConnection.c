
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ dataSocket; scalar_t__ xferTimeout; int servDataAddr; int ourDataAddr; } ;
typedef TYPE_1__* FTPCIPtr ;


 int SClose (scalar_t__,int) ;
 int alarm (scalar_t__) ;
 int closesocket (scalar_t__) ;
 scalar_t__ kClosedFileDescriptor ;
 int memset (int *,int ,int) ;

void
CloseDataConnection(const FTPCIPtr cip)
{
 if (cip->dataSocket != kClosedFileDescriptor) {



  if (cip->xferTimeout > 0)
   (void) alarm(cip->xferTimeout);
  (void) closesocket(cip->dataSocket);
  if (cip->xferTimeout > 0)
   (void) alarm(0);

  cip->dataSocket = kClosedFileDescriptor;
 }
 memset(&cip->ourDataAddr, 0, sizeof(cip->ourDataAddr));
 memset(&cip->servDataAddr, 0, sizeof(cip->servDataAddr));
}
