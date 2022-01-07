
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int savedCwd ;
struct TYPE_26__ {scalar_t__ STATfileParamWorks; int errNo; char* startingWorkingDirectory; int magic; } ;
struct TYPE_25__ {TYPE_1__* last; } ;
struct TYPE_23__ {int nLines; TYPE_3__* first; } ;
struct TYPE_24__ {TYPE_4__ msg; } ;
struct TYPE_22__ {TYPE_2__* next; } ;
struct TYPE_21__ {int * line; } ;
struct TYPE_20__ {char const* line; } ;
typedef TYPE_5__* ResponsePtr ;
typedef TYPE_6__ LineList ;
typedef TYPE_7__* FTPCIPtr ;


 int DisposeLineListContents (TYPE_6__*) ;
 int DoneWithResponse (TYPE_7__* const,TYPE_5__*) ;
 int Error (TYPE_7__* const,int ,char*) ;
 int FTPChdir (TYPE_7__* const,char*) ;
 int FTPGetCWD (TYPE_7__* const,char*,int) ;
 int FTPListToMemory2 (TYPE_7__* const,char*,TYPE_6__*,char*,int ,int*) ;
 TYPE_5__* InitResponse () ;
 int RCmd (TYPE_7__* const,TYPE_5__*,char*,char const* const) ;
 scalar_t__ kCommandAvailabilityUnknown ;
 scalar_t__ kCommandAvailable ;
 scalar_t__ kCommandNotAvailable ;
 int kDontPerror ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 void* kErrMallocFailed ;
 void* kErrSTATFailed ;
 int kErrSTATwithFileNotAvailable ;
 int kLibraryMagic ;
 int kNoErr ;
 scalar_t__ strcmp (int ,int ) ;
 int * strstr (int *,char*) ;

int
FTPFileExistsStat(const FTPCIPtr cip, const char *const file)
{
 int result;
 ResponsePtr rp;
 LineList fileList;
 char savedCwd[512];

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 if (file == ((void*)0))
  return (kErrBadParameter);

 if (cip->STATfileParamWorks == kCommandNotAvailable) {
  cip->errNo = result = kErrSTATwithFileNotAvailable;
  return (result);
 }

 if (cip->STATfileParamWorks == kCommandAvailabilityUnknown) {
  rp = InitResponse();
  if (rp == ((void*)0)) {
   result = kErrMallocFailed;
   cip->errNo = kErrMallocFailed;
   Error(cip, kDontPerror, "Malloc failed.\n");
   return (result);

  }
  result = RCmd(cip, rp, "STAT %s", "NoSuchFile");
  if ((result == 2) && ((rp->msg.nLines >= 3) || (rp->msg.nLines == 1))) {




   if (
    (rp->msg.first->next != ((void*)0)) &&
    (rp->msg.first->next->line != ((void*)0)) &&
    (
     (strstr(rp->msg.first->next->line, "o such file") != ((void*)0)) ||
     (strstr(rp->msg.first->next->line, "ot found") != ((void*)0))
    )
   ) {







    result = kNoErr;
   } else {
    cip->STATfileParamWorks = kCommandNotAvailable;
    cip->errNo = result = kErrSTATwithFileNotAvailable;
    DoneWithResponse(cip, rp);
    return (result);
   }
  }
  DoneWithResponse(cip, rp);






  if (
   (FTPGetCWD(cip, savedCwd, sizeof(savedCwd)) != kNoErr) ||
   (FTPChdir(cip, cip->startingWorkingDirectory) != kNoErr)
  ) {
   return (cip->errNo);
  }
  if (
   ((result = FTPListToMemory2(cip, "", &fileList, "", 0, (int *) 0)) < 0) ||
   (fileList.last == ((void*)0)) ||
   (fileList.last->line == ((void*)0))
  ) {

   cip->STATfileParamWorks = kCommandNotAvailable;
   cip->errNo = result = kErrSTATwithFileNotAvailable;
   DisposeLineListContents(&fileList);
   (void) FTPChdir(cip, savedCwd);
   return (result);
  }

  rp = InitResponse();
  if (rp == ((void*)0)) {
   result = kErrMallocFailed;
   cip->errNo = kErrMallocFailed;
   Error(cip, kDontPerror, "Malloc failed.\n");
   DisposeLineListContents(&fileList);
   (void) FTPChdir(cip, savedCwd);
   return (result);

  }

  result = RCmd(cip, rp, "STAT %s", fileList.last->line);
  DisposeLineListContents(&fileList);

  if ((result != 2) || (rp->msg.nLines == 2)) {




   cip->STATfileParamWorks = kCommandNotAvailable;
   cip->errNo = result = kErrSTATwithFileNotAvailable;
   DoneWithResponse(cip, rp);
   (void) FTPChdir(cip, savedCwd);
   return (result);
  } else if (
    (rp->msg.first->next != ((void*)0)) &&
    (rp->msg.first->next->line != ((void*)0)) &&
    (
     (strstr(rp->msg.first->next->line, "o such file") != ((void*)0)) ||
     (strstr(rp->msg.first->next->line, "ot found") != ((void*)0))
    )
  ) {

   cip->STATfileParamWorks = kCommandNotAvailable;
   cip->errNo = result = kErrSTATwithFileNotAvailable;
   DoneWithResponse(cip, rp);
   (void) FTPChdir(cip, savedCwd);
   return (result);
  }
  DoneWithResponse(cip, rp);
  cip->STATfileParamWorks = kCommandAvailable;


  (void) FTPChdir(cip, savedCwd);
 }

 rp = InitResponse();
 if (rp == ((void*)0)) {
  result = kErrMallocFailed;
  cip->errNo = kErrMallocFailed;
  Error(cip, kDontPerror, "Malloc failed.\n");
  return (result);
 }

 result = RCmd(cip, rp, "STAT %s", file);
 if (result == 2) {
  result = kNoErr;
  if (((rp->msg.nLines >= 3) || (rp->msg.nLines == 1))) {
   if (
    (rp->msg.first->next != ((void*)0)) &&
    (rp->msg.first->next->line != ((void*)0)) &&
    (
     (strstr(rp->msg.first->next->line, "o such file") != ((void*)0)) ||
     (strstr(rp->msg.first->next->line, "ot found") != ((void*)0))
    )
   ) {
    cip->errNo = kErrSTATFailed;
    result = kErrSTATFailed;
   } else {
    result = kNoErr;
   }
  } else if (rp->msg.nLines == 2) {
   cip->errNo = kErrSTATFailed;
   result = kErrSTATFailed;
  } else {
   result = kNoErr;
  }
 } else {
  cip->errNo = kErrSTATFailed;
  result = kErrSTATFailed;
 }
 DoneWithResponse(cip, rp);
 return (result);
}
