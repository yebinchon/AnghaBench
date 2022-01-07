
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ dataSocket; scalar_t__ connected; int errNo; int eofOkay; int magic; } ;
struct TYPE_12__ {int eofOkay; } ;
typedef TYPE_1__* ResponsePtr ;
typedef TYPE_2__* FTPCIPtr ;


 int CloseControlConnection (TYPE_2__* const) ;
 int DoneWithResponse (TYPE_2__* const,TYPE_1__*) ;
 int FTPAbortDataTransfer (TYPE_2__* const) ;
 int FTPDeallocateHost (TYPE_2__* const) ;
 TYPE_1__* InitResponse () ;
 int RCmd (TYPE_2__* const,TYPE_1__*,char*) ;
 scalar_t__ kClosedFileDescriptor ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 int kErrMallocFailed ;
 int kLibraryMagic ;
 int kNoErr ;
 scalar_t__ strcmp (int ,int ) ;

int
FTPCloseHost(const FTPCIPtr cip)
{
 ResponsePtr rp;
 int result;

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);


 if (cip->dataSocket != kClosedFileDescriptor)
  FTPAbortDataTransfer(cip);

 result = kNoErr;
 if (cip->connected != 0) {
  rp = InitResponse();
  if (rp == ((void*)0)) {
   cip->errNo = kErrMallocFailed;
   result = cip->errNo;
  } else {
   rp->eofOkay = 1;
   cip->eofOkay = 1;
   (void) RCmd(cip, rp, "QUIT");
   DoneWithResponse(cip, rp);
  }
 }

 CloseControlConnection(cip);




 FTPDeallocateHost(cip);
 return (result);
}
