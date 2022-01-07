
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int errNo; int magic; } ;
struct TYPE_11__ {int codeType; } ;
typedef TYPE_1__* ResponsePtr ;
typedef TYPE_2__* FTPCIPtr ;


 int CloseDataConnection (TYPE_2__* const) ;
 int DoneWithResponse (TYPE_2__* const,TYPE_1__*) ;
 int Error (TYPE_2__* const,int ,char*) ;
 int GetResponse (TYPE_2__* const,TYPE_1__*) ;
 TYPE_1__* InitResponse () ;
 int kDontPerror ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 int kErrDataTransferFailed ;
 int kErrMallocFailed ;
 int kLibraryMagic ;
 int kNoErr ;
 scalar_t__ strcmp (int ,int ) ;

int
FTPEndDataCmd(const FTPCIPtr cip, int didXfer)
{
 int result;
 int respCode;
 ResponsePtr rp;

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 CloseDataConnection(cip);
 result = kNoErr;
 if (didXfer) {





  rp = InitResponse();
  if (rp == ((void*)0)) {
   Error(cip, kDontPerror, "Malloc failed.\n");
   cip->errNo = kErrMallocFailed;
   result = cip->errNo;
   return (result);
  }
  result = GetResponse(cip, rp);
  if (result < 0)
   return (result);
  respCode = rp->codeType;
  DoneWithResponse(cip, rp);
  if (respCode != 2) {
   cip->errNo = kErrDataTransferFailed;
   result = cip->errNo;
  } else {
   result = kNoErr;
  }
 }
 return (result);
}
