
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ hasMLST; scalar_t__ serverType; int ietfCompatLevel; int errNo; } ;
struct TYPE_15__ {TYPE_2__* first; } ;
struct TYPE_16__ {int code; TYPE_3__ msg; } ;
struct TYPE_14__ {TYPE_1__* next; int * line; } ;
struct TYPE_13__ {int * line; } ;
typedef TYPE_4__* ResponsePtr ;
typedef int MLstItemPtr ;
typedef TYPE_5__* FTPCIPtr ;


 int DoneWithResponse (TYPE_5__* const,TYPE_4__*) ;
 int Error (TYPE_5__* const,int ,char*) ;
 TYPE_4__* InitResponse () ;
 int RCmd (TYPE_5__* const,TYPE_4__*,char*,char const* const) ;
 scalar_t__ UNIMPLEMENTED_CMD (int ) ;
 int UnMlsT (int *,int const) ;
 scalar_t__ kCommandNotAvailable ;
 int kDontPerror ;
 int kErrInvalidMLSTResponse ;
 void* kErrMLSTFailed ;
 void* kErrMLSTNotAvailable ;
 int kErrMallocFailed ;
 scalar_t__ kServerTypeNcFTPd ;
 scalar_t__ kServerTypeRoxen ;

int
FTPMListOneFile(const FTPCIPtr cip, const char *const file, const MLstItemPtr mlip)
{
 int result;
 ResponsePtr rp;
 if (
  (cip->hasMLST == kCommandNotAvailable) ||
  ((cip->serverType == kServerTypeNcFTPd) && (cip->ietfCompatLevel < 19981201)) ||
  (cip->serverType == kServerTypeRoxen)
 ) {
  cip->errNo = kErrMLSTNotAvailable;
  return (cip->errNo);
 }

 rp = InitResponse();
 if (rp == ((void*)0)) {
  result = cip->errNo = kErrMallocFailed;
  Error(cip, kDontPerror, "Malloc failed.\n");
 } else {
  result = RCmd(cip, rp, "MLST %s", file);
  if (
   (result == 2) &&
   (rp->msg.first->line != ((void*)0)) &&
   (rp->msg.first->next != ((void*)0)) &&
   (rp->msg.first->next->line != ((void*)0))
  ) {
   result = UnMlsT(rp->msg.first->next->line, mlip);
   if (result < 0) {
    cip->errNo = result = kErrInvalidMLSTResponse;
   }
  } else if (UNIMPLEMENTED_CMD(rp->code)) {
   cip->hasMLST = kCommandNotAvailable;
   cip->errNo = kErrMLSTNotAvailable;
   result = kErrMLSTNotAvailable;
  } else {
   cip->errNo = kErrMLSTFailed;
   result = kErrMLSTFailed;
  }
  DoneWithResponse(cip, rp);
 }

 return (result);
}
