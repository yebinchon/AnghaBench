
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* host; int leavePass; int maxDials; int redialDelay; char* asciiFilenameExtensions; int dataSocketSBufSize; int dataSocketRBufSize; int dataPortMode; int ctrlTimeout; int xferTimeout; int connTimeout; int * progress; int user; int errLog; int * debugLog; } ;


 int FTPInitConnectionInfo (int *,TYPE_1__*,int ) ;
 char* FTPStrError (int) ;
 scalar_t__ ISTREQ (char*,char*) ;
 int STRNCPY (int ,char*) ;
 int SetDebug (int ) ;
 int UseTrace () ;
 int exit (int) ;
 int fprintf (int ,char*,int,char*) ;
 char* gAutoAscii ;
 TYPE_1__ gConn ;
 int gConnTimeout ;
 int gCtrlTimeout ;
 int gDataPortMode ;
 int gDebug ;
 int gLib ;
 char* gPrevRemoteCWD ;
 int gRedialDelay ;
 int gSOBufsize ;
 int gTransferType ;
 scalar_t__ gTransferTypeInitialized ;
 scalar_t__ gUnprocessedJobs ;
 int gXferTimeout ;
 int kDefaultFTPBufSize ;
 int kTypeBinary ;
 int stderr ;

void
InitConnectionInfo(void)
{
 int result;

 result = FTPInitConnectionInfo(&gLib, &gConn, kDefaultFTPBufSize);
 if (result < 0) {
  (void) fprintf(stderr, "ncftp: init connection info error %d (%s).\n", result, FTPStrError(result));
  exit(1);
 }

 gConn.debugLog = ((void*)0);
 gConn.errLog = stderr;
 SetDebug(gDebug);
 UseTrace();
 (void) STRNCPY(gConn.user, "anonymous");
 gConn.host[0] = '\0';
 gConn.progress = ((void*)0);
 gTransferTypeInitialized = 0;
 gTransferType = kTypeBinary;
 gConn.leavePass = 1;
 gConn.connTimeout = gConnTimeout;
 gConn.xferTimeout = gXferTimeout;
 gConn.ctrlTimeout = gCtrlTimeout;
 gConn.dataPortMode = gDataPortMode;
 gConn.maxDials = (-1);
 gUnprocessedJobs = 0;
 gPrevRemoteCWD[0] = '\0';
 gConn.dataSocketRBufSize = gConn.dataSocketSBufSize = gSOBufsize;
 if (gRedialDelay >= 10)
  gConn.redialDelay = gRedialDelay;
 if ((gAutoAscii[0] == '\0') || (ISTREQ(gAutoAscii, "no")) || (ISTREQ(gAutoAscii, "off")) || (ISTREQ(gAutoAscii, "false"))) {
  gConn.asciiFilenameExtensions = ((void*)0);
 } else {
  gConn.asciiFilenameExtensions = gAutoAscii;
 }
}
