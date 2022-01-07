
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_15__ {scalar_t__ hasMDTM; void* errNo; int magic; } ;
struct TYPE_13__ {TYPE_1__* first; } ;
struct TYPE_14__ {int code; TYPE_2__ msg; } ;
struct TYPE_12__ {int line; } ;
typedef TYPE_3__* ResponsePtr ;
typedef TYPE_4__* FTPCIPtr ;


 int DoneWithResponse (TYPE_4__* const,TYPE_3__*) ;
 int Error (TYPE_4__* const,int ,char*) ;
 TYPE_3__* InitResponse () ;
 int RCmd (TYPE_4__* const,TYPE_3__*,char*,char const* const) ;
 scalar_t__ UNIMPLEMENTED_CMD (int ) ;
 int UnMDTMDate (int ) ;
 scalar_t__ kCommandAvailable ;
 scalar_t__ kCommandNotAvailable ;
 int kDontPerror ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 void* kErrMDTMFailed ;
 void* kErrMDTMNotAvailable ;
 void* kErrMallocFailed ;
 int kLibraryMagic ;
 int kModTimeUnknown ;
 int kNoErr ;
 scalar_t__ strcmp (int ,int ) ;
 scalar_t__ strncmp (int ,char*,int) ;

int
FTPFileModificationTime(const FTPCIPtr cip, const char *const file, time_t *const mdtm)
{
 int result;
 ResponsePtr rp;

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 if ((mdtm == ((void*)0)) || (file == ((void*)0)))
  return (kErrBadParameter);
 *mdtm = kModTimeUnknown;

 if (cip->hasMDTM == kCommandNotAvailable) {
  cip->errNo = kErrMDTMNotAvailable;
  result = kErrMDTMNotAvailable;
 } else {
  rp = InitResponse();
  if (rp == ((void*)0)) {
   result = kErrMallocFailed;
   cip->errNo = kErrMallocFailed;
   Error(cip, kDontPerror, "Malloc failed.\n");
  } else {
   result = RCmd(cip, rp, "MDTM %s", file);
   if (result < 0) {
    DoneWithResponse(cip, rp);
    return (result);
   } else if (strncmp(rp->msg.first->line, "19100", 5) == 0) {
    Error(cip, kDontPerror, "Warning: Server has Y2K Bug in \"MDTM\" command.\n");
    cip->errNo = kErrMDTMFailed;
    result = kErrMDTMFailed;
   } else if (result == 2) {
    *mdtm = UnMDTMDate(rp->msg.first->line);
    cip->hasMDTM = kCommandAvailable;
    result = kNoErr;
   } else if (UNIMPLEMENTED_CMD(rp->code)) {
    cip->hasMDTM = kCommandNotAvailable;
    cip->errNo = kErrMDTMNotAvailable;
    result = kErrMDTMNotAvailable;
   } else {
    cip->errNo = kErrMDTMFailed;
    result = kErrMDTMFailed;
   }
   DoneWithResponse(cip, rp);
  }
 }
 return (result);
}
