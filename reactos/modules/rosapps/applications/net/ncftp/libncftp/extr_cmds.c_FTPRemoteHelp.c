
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {void* errNo; int magic; } ;
struct TYPE_10__ {int msg; } ;
typedef TYPE_1__* ResponsePtr ;
typedef int * LineListPtr ;
typedef TYPE_2__* FTPCIPtr ;


 scalar_t__ CopyLineList (int * const,int *) ;
 int DoneWithResponse (TYPE_2__* const,TYPE_1__*) ;
 int Error (TYPE_2__* const,int ,char*) ;
 int InitLineList (int * const) ;
 TYPE_1__* InitResponse () ;
 int RCmd (TYPE_2__* const,TYPE_1__*,char*,...) ;
 int kDontPerror ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 void* kErrHELPFailed ;
 void* kErrMallocFailed ;
 int kLibraryMagic ;
 int kNoErr ;
 scalar_t__ strcmp (int ,int ) ;

int
FTPRemoteHelp(const FTPCIPtr cip, const char *const pattern, const LineListPtr llp)
{
 int result;
 ResponsePtr rp;

 if ((cip == ((void*)0)) || (llp == ((void*)0)))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 InitLineList(llp);
 rp = InitResponse();
 if (rp == ((void*)0)) {
  result = kErrMallocFailed;
  cip->errNo = kErrMallocFailed;
  Error(cip, kDontPerror, "Malloc failed.\n");
 } else {
  if ((pattern == ((void*)0)) || (*pattern == '\0'))
   result = RCmd(cip, rp, "HELP");
  else
   result = RCmd(cip, rp, "HELP %s", pattern);
  if (result < 0) {
   DoneWithResponse(cip, rp);
   return (result);
  } else if (result == 2) {
   if (CopyLineList(llp, &rp->msg) < 0) {
    result = kErrMallocFailed;
    cip->errNo = kErrMallocFailed;
    Error(cip, kDontPerror, "Malloc failed.\n");
   } else {
    result = kNoErr;
   }
  } else {
   cip->errNo = kErrHELPFailed;
   result = kErrHELPFailed;
  }
  DoneWithResponse(cip, rp);
 }
 return (result);
}
