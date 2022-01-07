
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int time_t ;
typedef int mstr ;
typedef int cstr ;
typedef int astr ;
struct TYPE_11__ {scalar_t__ hasUTIME; void* errNo; int magic; } ;
struct TYPE_10__ {int code; } ;
typedef TYPE_1__* ResponsePtr ;
typedef TYPE_2__* FTPCIPtr ;


 int DoneWithResponse (TYPE_2__* const,TYPE_1__*) ;
 int Error (TYPE_2__* const,int ,char*) ;
 int GmTimeStr (char*,int,int ) ;
 TYPE_1__* InitResponse () ;
 int RCmd (TYPE_2__* const,TYPE_1__*,char*,char const* const,char*,char*,char*) ;
 scalar_t__ UNIMPLEMENTED_CMD (int ) ;
 scalar_t__ kCommandAvailable ;
 scalar_t__ kCommandNotAvailable ;
 int kDontPerror ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 void* kErrMallocFailed ;
 void* kErrUTIMEFailed ;
 void* kErrUTIMENotAvailable ;
 int kLibraryMagic ;
 int kNoErr ;
 scalar_t__ strcmp (int ,int ) ;
 int time (int *) ;

int
FTPUtime(const FTPCIPtr cip, const char *const file, time_t actime, time_t modtime, time_t crtime)
{
 char mstr[64], astr[64], cstr[64];
 int result;
 ResponsePtr rp;

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 if (cip->hasUTIME == kCommandNotAvailable) {
  cip->errNo = kErrUTIMENotAvailable;
  result = kErrUTIMENotAvailable;
 } else {
  if ((actime == (time_t) 0) || (actime == (time_t) -1))
   (void) time(&actime);
  if ((modtime == (time_t) 0) || (modtime == (time_t) -1))
   (void) time(&modtime);
  if ((crtime == (time_t) 0) || (crtime == (time_t) -1))
   crtime = modtime;

  (void) GmTimeStr(astr, sizeof(astr), actime);
  (void) GmTimeStr(mstr, sizeof(mstr), modtime);
  (void) GmTimeStr(cstr, sizeof(cstr), crtime);

  rp = InitResponse();
  if (rp == ((void*)0)) {
   result = kErrMallocFailed;
   cip->errNo = kErrMallocFailed;
   Error(cip, kDontPerror, "Malloc failed.\n");
  } else {
   result = RCmd(cip, rp, "SITE UTIME %s %s %s %s UTC", file, astr, mstr, cstr);
   if (result < 0) {
    DoneWithResponse(cip, rp);
    return (result);
   } else if (result == 2) {
    cip->hasUTIME = kCommandAvailable;
    result = kNoErr;
   } else if (UNIMPLEMENTED_CMD(rp->code)) {
    cip->hasUTIME = kCommandNotAvailable;
    cip->errNo = kErrUTIMENotAvailable;
    result = kErrUTIMENotAvailable;
   } else {
    cip->errNo = kErrUTIMEFailed;
    result = kErrUTIMEFailed;
   }
   DoneWithResponse(cip, rp);
  }
 }
 return (result);
}
