
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int cwd ;
struct TYPE_11__ {int serverType; } ;
struct TYPE_10__ {TYPE_1__* first; } ;
struct TYPE_9__ {char* line; struct TYPE_9__* next; } ;
typedef TYPE_1__* LinePtr ;
typedef TYPE_2__* LineListPtr ;
typedef int LineList ;
typedef int FileInfoListPtr ;
typedef int FileInfoList ;
typedef TYPE_3__* FTPCIPtr ;


 int ComputeRNames (int *,char*,int,int) ;
 int ConcatFileInfoList (int ,int *) ;
 int ConcatFileToFileInfoList (int ,char*) ;
 int DisposeFileInfoListContents (int *) ;
 int DisposeLineListContents (int *) ;
 int FTPChdir (TYPE_3__*,char*) ;
 int FTPGetCWD (TYPE_3__*,char*,int) ;
 int FTPListToMemory2 (TYPE_3__*,char*,int *,char*,int,int*) ;
 int InitFileInfoList (int ) ;
 int UnLslR (int *,int *,int ) ;
 int kNoErr ;

int
FTPRemoteRecursiveFileList(FTPCIPtr cip, LineListPtr fileList, FileInfoListPtr files)
{
 LinePtr filePtr, nextFilePtr;
 LineList dirContents;
 FileInfoList fil;
 char cwd[512];
 int result;
 char *rdir;

 if ((result = FTPGetCWD(cip, cwd, sizeof(cwd))) < 0)
  return (result);

 InitFileInfoList(files);

 for (filePtr = fileList->first;
  filePtr != ((void*)0);
  filePtr = nextFilePtr)
 {
  nextFilePtr = filePtr->next;

  rdir = filePtr->line;
  if (rdir == ((void*)0))
   continue;

  if (FTPChdir(cip, rdir) < 0) {




   (void) ConcatFileToFileInfoList(files, rdir);
   continue;
  }


  if ((result = FTPListToMemory2(cip, "", &dirContents, "-lRa", 1, (int *) 0)) < 0) {
   goto goback;
  }

  (void) UnLslR(&fil, &dirContents, cip->serverType);
  DisposeLineListContents(&dirContents);
  (void) ComputeRNames(&fil, rdir, 1, 1);
  (void) ConcatFileInfoList(files, &fil);
  DisposeFileInfoListContents(&fil);

goback:
  if ((result = FTPChdir(cip, cwd)) < 0) {
   return (result);
  }
 }
 return (kNoErr);
}
