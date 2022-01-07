
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {void* errNo; int magic; } ;
struct TYPE_11__ {TYPE_1__* first; } ;
struct TYPE_10__ {char* line; struct TYPE_10__* next; } ;
typedef TYPE_1__* LinePtr ;
typedef TYPE_2__ LineList ;
typedef TYPE_3__* FTPCIPtr ;


 int DisposeLineListContents (TYPE_2__*) ;
 int FTPCmd (TYPE_3__* const,char*,char*) ;
 int FTPRemoteGlob (TYPE_3__* const,TYPE_2__*,char const* const,int const) ;
 int FTPRmdirRecursive (TYPE_3__* const,char*) ;
 void* kErrBadLineList ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 void* kErrRMDFailed ;
 int kLibraryMagic ;
 int kNoErr ;
 int const kRecursiveYes ;
 scalar_t__ strcmp (int ,int ) ;

int
FTPRmdir(const FTPCIPtr cip, const char *const pattern, const int recurse, const int doGlob)
{
 LineList fileList;
 LinePtr filePtr;
 char *file;
 int onceResult, batchResult;

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 batchResult = FTPRemoteGlob(cip, &fileList, pattern, doGlob);
 if (batchResult != kNoErr)
  return (batchResult);

 for (batchResult = kNoErr, filePtr = fileList.first;
  filePtr != ((void*)0);
  filePtr = filePtr->next)
 {
  file = filePtr->line;
  if (file == ((void*)0)) {
   batchResult = kErrBadLineList;
   cip->errNo = kErrBadLineList;
   break;
  }
  onceResult = FTPCmd(cip, "RMD %s", file);
  if (onceResult < 0) {
   batchResult = onceResult;
   break;
  }
  if (onceResult != 2) {
   if (recurse == kRecursiveYes) {
    onceResult = FTPRmdirRecursive(cip, file);
    if (onceResult < 0) {
     batchResult = kErrRMDFailed;
     cip->errNo = kErrRMDFailed;
    }
   } else {
    batchResult = kErrRMDFailed;
    cip->errNo = kErrRMDFailed;
   }
  }
 }
 DisposeLineListContents(&fileList);
 return (batchResult);
}
