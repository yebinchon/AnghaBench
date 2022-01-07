
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int cwd ;
struct TYPE_6__ {int serverType; } ;
typedef int LineList ;
typedef int FileInfoListPtr ;
typedef int FileInfoList ;
typedef TYPE_1__* FTPCIPtr ;


 int ComputeRNames (int *,char* const,int,int) ;
 int ConcatFileInfoList (int ,int *) ;
 int ConcatFileToFileInfoList (int ,char* const) ;
 int DisposeFileInfoListContents (int *) ;
 int DisposeLineListContents (int *) ;
 int FTPChdir (TYPE_1__*,char* const) ;
 int FTPGetCWD (TYPE_1__*,char*,int) ;
 int FTPListToMemory2 (TYPE_1__*,char*,int *,char*,int,int*) ;
 int InitFileInfoList (int ) ;
 int UnLslR (int *,int *,int ) ;
 int kNoErr ;

int
FTPRemoteRecursiveFileList1(FTPCIPtr cip, char *const rdir, FileInfoListPtr files)
{
 LineList dirContents;
 FileInfoList fil;
 char cwd[512];
 int result;

 if ((result = FTPGetCWD(cip, cwd, sizeof(cwd))) < 0)
  return (result);

 InitFileInfoList(files);

 if (rdir == ((void*)0))
  return (-1);

 if (FTPChdir(cip, rdir) < 0) {




  (void) ConcatFileToFileInfoList(files, rdir);
  return (kNoErr);
 }


 if ((result = FTPListToMemory2(cip, "", &dirContents, "-lRa", 1, (int *) 0)) < 0) {
  if ((result = FTPChdir(cip, cwd)) < 0) {
   return (result);
  }
 }

 (void) UnLslR(&fil, &dirContents, cip->serverType);
 DisposeLineListContents(&dirContents);


 (void) ComputeRNames(&fil, rdir, 1, 1);
 (void) ConcatFileInfoList(files, &fil);
 DisposeFileInfoListContents(&fil);

 if ((result = FTPChdir(cip, cwd)) < 0) {
  return (result);
 }
 return (kNoErr);
}
