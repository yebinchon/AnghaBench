
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {void* errNo; } ;
struct TYPE_12__ {TYPE_1__* first; } ;
struct TYPE_11__ {char* line; struct TYPE_11__* next; } ;
typedef TYPE_1__* LinePtr ;
typedef TYPE_2__ LineList ;
typedef TYPE_3__* FTPCIPtr ;


 int DisposeLineListContents (TYPE_2__*) ;
 int FTPChdir (TYPE_3__* const,char*) ;
 int FTPDelete (TYPE_3__* const,char*,int ,int ) ;
 int FTPRemoteGlob (TYPE_3__* const,TYPE_2__*,char*,int ) ;
 int FTPRmdir (TYPE_3__* const,char*,int ,int ) ;
 void* kErrBadLineList ;
 void* kErrCannotGoToPrevDir ;
 int kErrGlobNoMatch ;
 int kGlobNo ;
 int kGlobYes ;
 int kNoErr ;
 int kRecursiveNo ;

__attribute__((used)) static int
FTPRmdirRecursiveL2(const FTPCIPtr cip)
{
 LineList fileList;
 LinePtr filePtr;
 char *file;
 int result;

 result = FTPRemoteGlob(cip, &fileList, "**", kGlobYes);
 if (result != kNoErr) {
  return (result);
 }

 for (filePtr = fileList.first;
  filePtr != ((void*)0);
  filePtr = filePtr->next)
 {
  file = filePtr->line;
  if (file == ((void*)0)) {
   cip->errNo = kErrBadLineList;
   break;
  }

  if ((file[0] == '.') && ((file[1] == '\0') || ((file[1] == '.') && (file[2] == '\0'))))
   continue;

  if (FTPChdir(cip, file) == kNoErr) {



   result = FTPRmdirRecursiveL2(cip);

   if (FTPChdir(cip, "..") != kNoErr) {




    result = kErrCannotGoToPrevDir;
    cip->errNo = kErrCannotGoToPrevDir;
    return (result);
   }

   if ((result < 0) && (result != kErrGlobNoMatch))
    return (result);

   result = FTPRmdir(cip, file, kRecursiveNo, kGlobNo);
   if (result != kNoErr) {




    return (result);
   }
  } else {

   result = FTPDelete(cip, file, kRecursiveNo, kGlobNo);



  }
 }
 DisposeLineListContents(&fileList);

 return (result);
}
