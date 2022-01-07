
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; int errNo; void* ctrlSocketW; void* ctrlSocketR; int * cin; scalar_t__ ctrlTimeout; int srlBuf; int ctrlSrl; int * cout; int bufSize; int lastFTPCmdResultLL; int * asciiFilenameExtensions; int * startingWorkingDirectory; int * passphraseProc; int * onLoginMsgProc; int * printResponseProc; int * redialStatusProc; int * onConnectMsgProc; int * lname; int * rname; int * progress; int * errLogProc; int * debugLogProc; int * errLog; int * debugLog; int lip; } ;
typedef int LineList ;
typedef int FTPLIPtr ;
typedef TYPE_1__* FTPCIPtr ;


 int CloseFile (int **) ;
 scalar_t__ InitSReadlineInfo (int *,void*,int ,int,int,int) ;
 void* _fdopen (void*,char*) ;
 scalar_t__ calloc (size_t,int ) ;
 void* kClosedFileDescriptor ;
 int kErrFdopenR ;
 int kErrFdopenW ;
 int kErrMallocFailed ;
 int kNoErr ;
 int memset (int *,int ,int) ;

int
FTPRebuildConnectionInfo(const FTPLIPtr lip, const FTPCIPtr cip)
{
 char *buf;

 cip->lip = lip;
 cip->debugLog = ((void*)0);
 cip->errLog = ((void*)0);
 cip->debugLogProc = ((void*)0);
 cip->errLogProc = ((void*)0);
 cip->buf = ((void*)0);
 cip->cin = ((void*)0);
 cip->cout = ((void*)0);
 cip->errNo = 0;
 cip->progress = ((void*)0);
 cip->rname = ((void*)0);
 cip->lname = ((void*)0);
 cip->onConnectMsgProc = ((void*)0);
 cip->redialStatusProc = ((void*)0);
 cip->printResponseProc = ((void*)0);
 cip->onLoginMsgProc = ((void*)0);
 cip->passphraseProc = ((void*)0);
 cip->startingWorkingDirectory = ((void*)0);
 cip->asciiFilenameExtensions = ((void*)0);

 (void) memset(&cip->lastFTPCmdResultLL, 0, sizeof(LineList));


 buf = (char *) calloc((size_t) 1, cip->bufSize);
 if (buf == ((void*)0)) {
  cip->errNo = kErrMallocFailed;
  return (kErrMallocFailed);
 }
 cip->buf = buf;




 if ((cip->cin = _fdopen(cip->ctrlSocketR, "r")) == ((void*)0)) {
  cip->errNo = kErrFdopenR;
  cip->ctrlSocketR = kClosedFileDescriptor;
  cip->ctrlSocketW = kClosedFileDescriptor;
  return (kErrFdopenR);
 }

 if ((cip->cout = _fdopen(cip->ctrlSocketW, "w")) == ((void*)0)) {
  CloseFile(&cip->cin);
  cip->errNo = kErrFdopenW;
  cip->ctrlSocketR = kClosedFileDescriptor;
  cip->ctrlSocketW = kClosedFileDescriptor;
  return (kErrFdopenW);
 }
 return (kNoErr);
}
