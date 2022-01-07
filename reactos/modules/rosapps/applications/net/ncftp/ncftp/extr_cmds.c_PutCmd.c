
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vsigproc_t ;
struct TYPE_5__ {int xferType; } ;
struct TYPE_4__ {scalar_t__* noglobargv; } ;
typedef int ConfirmResumeUploadProc ;
typedef int CommandPtr ;
typedef TYPE_1__* ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int FTPPerror (int *,int,int ,char*,char const*) ;
 int FTPPutFiles3 (int *,char*,char const*,int,int,int,int,int *,int *,int,int,int ,int ) ;
 int FTPPutOneFile3 (int *,char const*,char const*,int,int,int,int *,int *,int,int,int ,int ) ;
 int FlushLsCache () ;
 int Getopt (int const,char const** const,char*) ;
 int GetoptReset () ;
 int NcFTPConfirmResumeUploadProc ;
 int NcSignal (int ,int ) ;
 int NoConfirmResumeUploadProc ;
 int PrintCmdUsage (int const) ;
 int SIGINT ;
 int STRNCPY (char*,char const*) ;
 int StrRemoveTrailingSlashes (char*) ;
 int XferCanceller ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 TYPE_2__ gBm ;
 int gConn ;
 int const gOptInd ;
 int gResumeAnswerAll ;
 int gUnusedArg ;
 int kAppendNo ;
 int kAppendYes ;
 int kConfirmResumeProcNotUsed ;
 int kDeleteNo ;
 int kDeleteYes ;
 int kErrCouldNotStartDataTransfer ;
 int kGlobNo ;
 int kGlobYes ;
 int kRecursiveNo ;
 int kRecursiveYes ;
 int kResumeNo ;
 int kResumeYes ;
 int kTypeAscii ;
 int stderr ;
 int stdin ;

void
PutCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 int opt;
 int renameMode = 0;
 int recurseFlag = kRecursiveNo;
 int appendFlag = kAppendNo;
 const char *dstdir = ((void*)0);
 int rc;
 int i;
 int doGlob;
 int xtype = gBm.xferType;
 int nD = 0;
 int deleteFlag = kDeleteNo;
 int resumeFlag = kResumeYes;
 char pattern[256];
 vsigproc_t osigint;
 ConfirmResumeUploadProc confirmProc;

 confirmProc = NcFTPConfirmResumeUploadProc;
 gResumeAnswerAll = kConfirmResumeProcNotUsed;
 ARGSUSED(gUnusedArg);
 GetoptReset();
 while ((opt = Getopt(argc, argv, "AafZzrRD")) >= 0) switch (opt) {
  case 'a':
   xtype = kTypeAscii;
   break;
  case 'A':



   appendFlag = kAppendYes;
   break;
  case 'f':
  case 'Z':




   resumeFlag = kResumeNo;
   confirmProc = NoConfirmResumeUploadProc;
   break;
  case 'z':





   renameMode = 1;
   break;
  case 'r':
  case 'R':
   recurseFlag = kRecursiveYes;



   recurseFlag = kRecursiveYes;
   break;
  case 'D':






   nD++;
   break;
  default:
   PrintCmdUsage(cmdp);
   return;
 }

 if (nD >= 2)
  deleteFlag = kDeleteYes;

 if (renameMode != 0) {
  if (gOptInd > (argc - 2)) {
   PrintCmdUsage(cmdp);
   (void) fprintf(stderr, "\nFor put with rename, try \"put -z local-path-name remote-path-name\".\n");
   return;
  }
  osigint = NcSignal(SIGINT, XferCanceller);
  rc = FTPPutOneFile3(&gConn, argv[gOptInd], argv[gOptInd + 1], xtype, (-1), appendFlag, ((void*)0), ((void*)0), resumeFlag, deleteFlag, confirmProc, 0);
  if (rc < 0)
   FTPPerror(&gConn, rc, kErrCouldNotStartDataTransfer, "put", argv[gOptInd + 1]);
 } else {
  osigint = NcSignal(SIGINT, XferCanceller);
  for (i=gOptInd; i<argc; i++) {
   doGlob = (aip->noglobargv[i] != 0) ? kGlobNo: kGlobYes;
   STRNCPY(pattern, argv[i]);
   StrRemoveTrailingSlashes(pattern);
   rc = FTPPutFiles3(&gConn, pattern, dstdir, recurseFlag, doGlob, xtype, appendFlag, ((void*)0), ((void*)0), resumeFlag, deleteFlag, confirmProc, 0);
   if (rc < 0)
    FTPPerror(&gConn, rc, kErrCouldNotStartDataTransfer, "put", argv[i]);
  }
 }


 FlushLsCache();

 (void) NcSignal(SIGINT, osigint);
 (void) fflush(stdin);
}
