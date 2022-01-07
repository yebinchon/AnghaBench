
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ dataSocket; int magic; } ;
typedef scalar_t__ FTPSigProc ;
typedef TYPE_1__* FTPCIPtr ;


 int CloseControlConnection (TYPE_1__* const) ;
 int CloseDataConnection (TYPE_1__* const) ;
 int FTPDeallocateHost (TYPE_1__* const) ;
 int SIGPIPE ;
 scalar_t__ SIG_IGN ;
 int SetLinger (TYPE_1__* const,scalar_t__,int ) ;
 scalar_t__ kClosedFileDescriptor ;
 int kLibraryMagic ;
 scalar_t__ signal (int ,scalar_t__) ;
 scalar_t__ strcmp (int ,int ) ;

void
FTPShutdownHost(const FTPCIPtr cip)
{




 if (cip == ((void*)0))
  return;
 if (strcmp(cip->magic, kLibraryMagic))
  return;






 if (cip->dataSocket != kClosedFileDescriptor)
  (void) SetLinger(cip, cip->dataSocket, 0);
 CloseDataConnection(cip);


 CloseControlConnection(cip);

 FTPDeallocateHost(cip);




}
