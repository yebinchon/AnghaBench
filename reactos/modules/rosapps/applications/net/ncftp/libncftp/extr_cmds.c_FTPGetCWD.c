
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {void* errNo; int magic; } ;
struct TYPE_13__ {TYPE_1__* first; } ;
struct TYPE_14__ {TYPE_2__ msg; } ;
struct TYPE_12__ {char* line; } ;
typedef TYPE_3__* ResponsePtr ;
typedef TYPE_4__* FTPCIPtr ;


 int DoneWithResponse (TYPE_4__* const,TYPE_3__*) ;
 int Error (TYPE_4__* const,int ,char*) ;
 TYPE_3__* InitResponse () ;
 int RCmd (TYPE_4__* const,TYPE_3__*,char*) ;
 int Strncpy (char* const,char*,size_t const) ;
 int kDontPerror ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 void* kErrInvalidDirParam ;
 void* kErrMallocFailed ;
 void* kErrPWDFailed ;
 int kLibraryMagic ;
 int kNoErr ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (int ,int ) ;
 char* strrchr (char*,char) ;

int
FTPGetCWD(const FTPCIPtr cip, char *const newCwd, const size_t newCwdSize)
{
 ResponsePtr rp;
 char *l, *r;
 int result;

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 if ((newCwd == ((void*)0)) || (newCwdSize == 0)) {
  result = kErrInvalidDirParam;
  cip->errNo = kErrInvalidDirParam;
 } else {
  rp = InitResponse();
  if (rp == ((void*)0)) {
   result = kErrMallocFailed;
   cip->errNo = kErrMallocFailed;
   Error(cip, kDontPerror, "Malloc failed.\n");
  } else {
   result = RCmd(cip, rp, "PWD");
   if (result == 2) {
    if ((r = strrchr(rp->msg.first->line, '"')) != ((void*)0)) {



     l = strchr(rp->msg.first->line, '"');
     if ((l != ((void*)0)) && (l != r)) {
      *r = '\0';
      ++l;
      (void) Strncpy(newCwd, l, newCwdSize);
      *r = '"';
     }
    } else {



     if ((r = strchr(rp->msg.first->line, ' ')) != ((void*)0)) {
      *r = '\0';
      (void) Strncpy(newCwd, (rp->msg.first->line), newCwdSize);
      *r = ' ';
     }
    }
    result = kNoErr;
   } else if (result > 0) {
    result = kErrPWDFailed;
    cip->errNo = kErrPWDFailed;
   }
   DoneWithResponse(cip, rp);
  }
 }
 return (result);
}
