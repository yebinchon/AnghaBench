
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int vsigproc_t ;
struct TYPE_5__ {int xferType; } ;
struct TYPE_4__ {scalar_t__* noglobargv; } ;
typedef int ConfirmResumeDownloadProc ;
typedef int CommandPtr ;
typedef TYPE_1__* ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int FTPGetFiles3 (int *,char*,char const*,int,int,int,int,int,int,int,int ,int ) ;
 int FTPGetOneFile3 (int *,char const*,char const*,int,int,int,int,int,int ,int ) ;
 int FTPPerror (int *,int,int ,char*,char const*) ;
 int FlushLsCache () ;
 int Getopt (int const,char const** const,char*) ;
 int GetoptReset () ;
 int NcFTPConfirmResumeDownloadProc ;
 int NcSignal (int ,int ) ;
 int NoConfirmResumeDownloadProc ;
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
 int kTarNo ;
 int kTarYes ;
 int kTypeAscii ;
 int stderr ;
 int stdin ;

void
GetCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 int opt;
 int renameMode = 0;
 int recurseFlag = kRecursiveNo;
 int appendFlag = kAppendNo;
 int resumeFlag = kResumeYes;
 int tarflag = kTarYes;
 const char *dstdir = ((void*)0);
 int rc;
 int i;
 int doGlob;
 int xtype = gBm.xferType;
 int nD = 0;
 int deleteFlag = kDeleteNo;
 char pattern[256];
 vsigproc_t osigint;
 ConfirmResumeDownloadProc confirmProc;

 confirmProc = NcFTPConfirmResumeDownloadProc;
 gResumeAnswerAll = kConfirmResumeProcNotUsed;
 ARGSUSED(gUnusedArg);
 GetoptReset();
 while ((opt = Getopt(argc, argv, "aAzfrRTD")) >= 0) switch (opt) {
  case 'a':
   xtype = kTypeAscii;
   break;
  case 'A':



   appendFlag = kAppendYes;
   break;
  case 'f':
  case 'Z':




   resumeFlag = kResumeNo;
   confirmProc = NoConfirmResumeDownloadProc;
   break;
  case 'z':





   renameMode = 1;
   break;
  case 'r':
  case 'R':



   recurseFlag = kRecursiveYes;
   break;
  case 'T':
   tarflag = kTarNo;
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
  if (gOptInd > argc - 2) {
   PrintCmdUsage(cmdp);
   (void) fprintf(stderr, "\nFor get with rename, try \"get -z remote-path-name local-path-name\".\n");
   return;
  }
  osigint = NcSignal(SIGINT, XferCanceller);
  rc = FTPGetOneFile3(&gConn, argv[gOptInd], argv[gOptInd + 1], xtype, (-1), resumeFlag, appendFlag, deleteFlag, NoConfirmResumeDownloadProc, 0);
  if (rc < 0)
   FTPPerror(&gConn, rc, kErrCouldNotStartDataTransfer, "get", argv[gOptInd]);
 } else {
  osigint = NcSignal(SIGINT, XferCanceller);
  for (i=gOptInd; i<argc; i++) {
   doGlob = (aip->noglobargv[i] != 0) ? kGlobNo: kGlobYes;
   STRNCPY(pattern, argv[i]);
   StrRemoveTrailingSlashes(pattern);
   rc = FTPGetFiles3(&gConn, pattern, dstdir, recurseFlag, doGlob, xtype, resumeFlag, appendFlag, deleteFlag, tarflag, confirmProc, 0);
   if (rc < 0)
    FTPPerror(&gConn, rc, kErrCouldNotStartDataTransfer, "get", argv[i]);
  }
 }
 (void) NcSignal(SIGINT, osigint);
 (void) fflush(stdin);

 if (deleteFlag == kDeleteYes) {

  FlushLsCache();
 }
}
