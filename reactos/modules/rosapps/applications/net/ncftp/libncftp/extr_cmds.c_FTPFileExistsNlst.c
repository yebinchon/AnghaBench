
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int savedCwd ;
struct TYPE_13__ {scalar_t__ NLSTfileParamWorks; int errNo; char* startingWorkingDirectory; int magic; } ;
struct TYPE_12__ {int nLines; TYPE_1__* last; } ;
struct TYPE_11__ {char const* line; } ;
typedef TYPE_2__ LineList ;
typedef TYPE_3__* FTPCIPtr ;


 int DisposeLineListContents (TYPE_2__*) ;
 int FTPChdir (TYPE_3__* const,char*) ;
 int FTPGetCWD (TYPE_3__* const,char*,int) ;
 int FTPListToMemory2 (TYPE_3__* const,char const* const,TYPE_2__*,char*,int ,int*) ;
 int InitLineList (TYPE_2__*) ;
 scalar_t__ kCommandAvailabilityUnknown ;
 scalar_t__ kCommandAvailable ;
 scalar_t__ kCommandNotAvailable ;
 int kErrBadMagic ;
 int kErrBadParameter ;
 void* kErrNLSTFailed ;
 int kErrNLSTwithFileNotAvailable ;
 int kLibraryMagic ;
 int kNoErr ;
 scalar_t__ strcmp (int ,int ) ;
 int * strstr (char const*,char*) ;

int
FTPFileExistsNlst(const FTPCIPtr cip, const char *const file)
{
 int result;
 LineList fileList, rootFileList;
 char savedCwd[512];

 if (cip == ((void*)0))
  return (kErrBadParameter);
 if (strcmp(cip->magic, kLibraryMagic))
  return (kErrBadMagic);

 if (file == ((void*)0))
  return (kErrBadParameter);

 if (cip->NLSTfileParamWorks == kCommandNotAvailable) {
  cip->errNo = result = kErrNLSTwithFileNotAvailable;
  return (result);
 }

 if (cip->NLSTfileParamWorks == kCommandAvailabilityUnknown) {
  if (
   ((FTPListToMemory2(cip, "NoSuchFile", &fileList, "", 0, (int *) 0)) == kNoErr) &&
   (fileList.nLines >= 1) &&
   (strstr(fileList.last->line, "o such file") == ((void*)0)) &&
   (strstr(fileList.last->line, "ot found") == ((void*)0)) &&
   (strstr(fileList.last->line, "o Such File") == ((void*)0)) &&
   (strstr(fileList.last->line, "ot Found") == ((void*)0))

  ) {
   cip->NLSTfileParamWorks = kCommandNotAvailable;
   cip->errNo = result = kErrNLSTwithFileNotAvailable;
   DisposeLineListContents(&fileList);
   return (result);
  }
  DisposeLineListContents(&fileList);






  if (
   (FTPGetCWD(cip, savedCwd, sizeof(savedCwd)) != kNoErr) ||
   (FTPChdir(cip, cip->startingWorkingDirectory) != kNoErr)
  ) {
   return (cip->errNo);
  }
  if (
   ((result = FTPListToMemory2(cip, "", &rootFileList, "", 0, (int *) 0)) < 0) ||
   (rootFileList.last == ((void*)0)) ||
   (rootFileList.last->line == ((void*)0))
  ) {

   cip->NLSTfileParamWorks = kCommandNotAvailable;
   cip->errNo = result = kErrNLSTwithFileNotAvailable;
   DisposeLineListContents(&rootFileList);
   (void) FTPChdir(cip, savedCwd);
   return (result);
  }

  if (
   ((FTPListToMemory2(cip, rootFileList.last->line, &fileList, "", 0, (int *) 0)) == kNoErr) &&
   (fileList.nLines >= 1) &&
   (strstr(fileList.last->line, "o such file") == ((void*)0)) &&
   (strstr(fileList.last->line, "ot found") == ((void*)0)) &&
   (strstr(fileList.last->line, "o Such File") == ((void*)0)) &&
   (strstr(fileList.last->line, "ot Found") == ((void*)0))

  ) {

   DisposeLineListContents(&fileList);
   DisposeLineListContents(&rootFileList);
   cip->NLSTfileParamWorks = kCommandAvailable;


   (void) FTPChdir(cip, savedCwd);
  } else {
   cip->NLSTfileParamWorks = kCommandNotAvailable;
   cip->errNo = result = kErrNLSTwithFileNotAvailable;
   DisposeLineListContents(&fileList);
   DisposeLineListContents(&rootFileList);
   (void) FTPChdir(cip, savedCwd);
   return (result);
  }
 }


 InitLineList(&fileList);
 if (
  ((FTPListToMemory2(cip, file, &fileList, "", 0, (int *) 0)) == kNoErr) &&
  (fileList.nLines >= 1) &&
  (strstr(fileList.last->line, "o such file") == ((void*)0)) &&
  (strstr(fileList.last->line, "ot found") == ((void*)0)) &&
  (strstr(fileList.last->line, "o Such File") == ((void*)0)) &&
  (strstr(fileList.last->line, "ot Found") == ((void*)0))

 ) {

  result = kNoErr;
 } else {
  cip->errNo = kErrNLSTFailed;
  result = kErrNLSTFailed;
 }

 DisposeLineListContents(&fileList);
 return (result);
}
