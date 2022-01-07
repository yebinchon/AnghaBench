
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {char const* const magic; void* errNo; } ;
struct TYPE_14__ {TYPE_1__* first; } ;
struct TYPE_15__ {TYPE_2__ msg; } ;
struct TYPE_13__ {char* line; } ;
typedef TYPE_3__* ResponsePtr ;
typedef TYPE_4__* FTPCIPtr ;


 int DoneWithResponse (TYPE_4__* const,TYPE_3__*) ;
 int Error (TYPE_4__* const,int ,char*) ;
 int FTPGetCWD (TYPE_4__* const,char* const,size_t const) ;
 TYPE_3__* InitResponse () ;
 int RCmd (TYPE_4__* const,TYPE_3__*,char*,...) ;
 int Strncpy (char* const,char*,size_t const) ;
 int kDontPerror ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 void* kErrCWDFailed ;
 void* kErrInvalidDirParam ;
 void* kErrMallocFailed ;
 char* kLibraryMagic ;
 int kNoErr ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char const* const,char*) ;
 char* strrchr (char*,char) ;

int
FTPChdirAndGetCWD(const FTPCIPtr cip, const char *const cdCwd, char *const newCwd, const size_t newCwdSize)
{
 ResponsePtr rp;
 char *l, *r;
 int result;

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 if ((newCwd == ((void*)0)) || (cdCwd == ((void*)0))) {
  result = kErrInvalidDirParam;
  cip->errNo = kErrInvalidDirParam;
 } else {
  if (cdCwd[0] == '\0') {
   result = FTPGetCWD(cip, newCwd, newCwdSize);
   return (result);
  }
  rp = InitResponse();
  if (rp == ((void*)0)) {
   result = kErrMallocFailed;
   cip->errNo = kErrMallocFailed;
   Error(cip, kDontPerror, "Malloc failed.\n");
  } else {
   if (strcmp(cdCwd, "..") == 0)
    result = RCmd(cip, rp, "CDUP");
   else
    result = RCmd(cip, rp, "CWD %s", cdCwd);
   if (result == 2) {
    l = strchr(rp->msg.first->line, '"');
    if ((l == rp->msg.first->line) && ((r = strrchr(rp->msg.first->line, '"')) != ((void*)0)) && (l != r)) {





     *r = '\0';
     ++l;
     (void) Strncpy(newCwd, l, newCwdSize);
     *r = '"';
     DoneWithResponse(cip, rp);
     result = kNoErr;
    } else {
     DoneWithResponse(cip, rp);
     result = FTPGetCWD(cip, newCwd, newCwdSize);
    }
   } else if (result > 0) {
    result = kErrCWDFailed;
    cip->errNo = kErrCWDFailed;
    DoneWithResponse(cip, rp);
   } else {
    DoneWithResponse(cip, rp);
   }
  }
 }
 return (result);
}
