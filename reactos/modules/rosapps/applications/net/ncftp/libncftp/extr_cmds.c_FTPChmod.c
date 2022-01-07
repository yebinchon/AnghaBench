
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {void* errNo; int magic; } ;
struct TYPE_10__ {TYPE_1__* first; } ;
struct TYPE_9__ {char* line; struct TYPE_9__* next; } ;
typedef TYPE_1__* LinePtr ;
typedef TYPE_2__ LineList ;
typedef TYPE_3__* FTPCIPtr ;


 int DisposeLineListContents (TYPE_2__*) ;
 int FTPCmd (TYPE_3__* const,char*,char const* const,char*) ;
 int FTPRemoteGlob (TYPE_3__* const,TYPE_2__*,char const* const,int const) ;
 void* kErrBadLineList ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 void* kErrChmodFailed ;
 int kLibraryMagic ;
 int kNoErr ;
 scalar_t__ strcmp (int ,int ) ;

int
FTPChmod(const FTPCIPtr cip, const char *const pattern, const char *const mode, const int doGlob)
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
  onceResult = FTPCmd(cip, "SITE CHMOD %s %s", mode, file);
  if (onceResult < 0) {
   batchResult = onceResult;
   break;
  }
  if (onceResult != 2) {
   batchResult = kErrChmodFailed;
   cip->errNo = kErrChmodFailed;
  }
 }
 DisposeLineListContents(&fileList);
 return (batchResult);
}
