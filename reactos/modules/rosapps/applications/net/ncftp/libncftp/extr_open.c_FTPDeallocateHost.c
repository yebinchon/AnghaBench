
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lastFTPCmdResultLL; int ctrlSrl; int * startingWorkingDirectory; int * buf; int bufSize; } ;
typedef TYPE_1__* FTPCIPtr ;


 int DisposeLineListContents (int *) ;
 int DisposeSReadlineInfo (int *) ;
 int free (int *) ;
 int memset (int *,int ,int ) ;

__attribute__((used)) static void
FTPDeallocateHost(const FTPCIPtr cip)
{




 if (cip->buf != ((void*)0)) {
  (void) memset(cip->buf, 0, cip->bufSize);
  free(cip->buf);
  cip->buf = ((void*)0);
 }

 if (cip->startingWorkingDirectory != ((void*)0)) {
  free(cip->startingWorkingDirectory);
  cip->startingWorkingDirectory = ((void*)0);
 }




 DisposeLineListContents(&cip->lastFTPCmdResultLL);
}
