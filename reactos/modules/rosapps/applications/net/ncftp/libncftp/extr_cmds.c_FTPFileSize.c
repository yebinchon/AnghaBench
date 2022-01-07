
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ longest_int ;
struct TYPE_16__ {scalar_t__ hasSIZE; void* errNo; int magic; } ;
struct TYPE_14__ {TYPE_1__* first; } ;
struct TYPE_15__ {int code; TYPE_2__ msg; } ;
struct TYPE_13__ {int line; } ;
typedef TYPE_3__* ResponsePtr ;
typedef TYPE_4__* FTPCIPtr ;


 int DoneWithResponse (TYPE_4__* const,TYPE_3__*) ;
 int Error (TYPE_4__* const,int ,char*) ;
 int FTPSetTransferType (TYPE_4__* const,int const) ;
 TYPE_3__* InitResponse () ;
 int RCmd (TYPE_4__* const,TYPE_3__*,char*,char const* const) ;
 char* SCANF_LONG_LONG ;
 scalar_t__ UNIMPLEMENTED_CMD (int ) ;
 scalar_t__ kCommandAvailable ;
 scalar_t__ kCommandNotAvailable ;
 int kDontPerror ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 void* kErrMallocFailed ;
 void* kErrSIZEFailed ;
 void* kErrSIZENotAvailable ;
 int kLibraryMagic ;
 int kNoErr ;
 scalar_t__ kSizeUnknown ;
 int sscanf (int ,char*,scalar_t__* const) ;
 scalar_t__ strcmp (int ,int ) ;
 scalar_t__ strtoq (int ,int *,int ) ;

int
FTPFileSize(const FTPCIPtr cip, const char *const file, longest_int *const size, const int type)
{
 int result;
 ResponsePtr rp;

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 if ((size == ((void*)0)) || (file == ((void*)0)))
  return (kErrBadParameter);
 *size = kSizeUnknown;

 result = FTPSetTransferType(cip, type);
 if (result < 0)
  return (result);

 if (cip->hasSIZE == kCommandNotAvailable) {
  cip->errNo = kErrSIZENotAvailable;
  result = kErrSIZENotAvailable;
 } else {
  rp = InitResponse();
  if (rp == ((void*)0)) {
   result = kErrMallocFailed;
   cip->errNo = kErrMallocFailed;
   Error(cip, kDontPerror, "Malloc failed.\n");
  } else {
   result = RCmd(cip, rp, "SIZE %s", file);
   if (result < 0) {
    DoneWithResponse(cip, rp);
    return (result);
   } else if (result == 2) {





    (void) sscanf(rp->msg.first->line, "%ld", size);

    cip->hasSIZE = kCommandAvailable;
    result = kNoErr;
   } else if (UNIMPLEMENTED_CMD(rp->code)) {
    cip->hasSIZE = kCommandNotAvailable;
    cip->errNo = kErrSIZENotAvailable;
    result = kErrSIZENotAvailable;
   } else {
    cip->errNo = kErrSIZEFailed;
    result = kErrSIZEFailed;
   }
   DoneWithResponse(cip, rp);
  }
 }
 return (result);
}
