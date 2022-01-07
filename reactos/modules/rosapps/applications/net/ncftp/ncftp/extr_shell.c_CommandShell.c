
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ time_t ;
typedef int prompt ;
typedef int ai ;
struct TYPE_7__ {scalar_t__ connected; int host; } ;
struct TYPE_6__ {int cargc; int noglobargv; int argbuf; int cargv; } ;
typedef TYPE_1__ ArgvInfo ;


 int AddHistory (char*) ;
 int BackToTop ;
 int CloseHost () ;
 scalar_t__ DoCommand (TYPE_1__*) ;
 int FTPShutdownHost (TYPE_3__*) ;
 int MB_OK ;
 int MakeArgv (char*,int *,int ,int,int ,int,int ,int ) ;
 int MakePrompt (char*,int) ;
 int MessageBeep (int ) ;
 int NcSignal (scalar_t__,int ) ;
 char* Readline (char*) ;
 scalar_t__ SIGALRM ;
 scalar_t__ SIGINT ;
 scalar_t__ SIGPIPE ;
 int SetXtermTitle (char*,...) ;
 int Trace (int ,char*,char*) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int gBackToTopJmp ;
 scalar_t__ gCancelCtrl ;
 TYPE_3__ gConn ;
 scalar_t__ gDoneApplication ;
 int gEventNumber ;
 scalar_t__ gGotSig ;
 int gMayBackToTopJmp ;
 int gRunningCommand ;
 scalar_t__ kBeepAfterCmdTime ;
 int memset (TYPE_1__*,int ,int) ;
 int printf (char*) ;
 int setjmp (int ) ;
 int sigsetjmp (int ,int) ;
 int sleep (int) ;
 int stderr ;
 int time (scalar_t__*) ;

void
CommandShell(void)
{
 int tUsed, bUsed;
 ArgvInfo ai;
 char prompt[64];
 char *lineRead;


 int sj;

 time_t cmdStart, cmdStop;







 sj = setjmp(gBackToTopJmp);




 if (sj != 0) {
  Trace(0, "Caught signal %d, back at top.\n", gGotSig);
  if (gGotSig == SIGALRM) {
   (void) printf("\nRemote host was not responding, closing down the session.");
   FTPShutdownHost(&gConn);
  } else{
   (void) printf("\nInterrupted.\n");
   if (gCancelCtrl != 0) {
    gCancelCtrl = 0;
    (void) printf("Closing down the current FTP session: ");
    FTPShutdownHost(&gConn);
    (void) sleep(1);
    (void) printf("done.\n");
   }
  }
 }

 gMayBackToTopJmp = 1;



 ++gEventNumber;

 while (gDoneApplication == 0) {


  (void) NcSignal(SIGINT, BackToTop);
  (void) NcSignal(SIGPIPE, BackToTop);
  (void) NcSignal(SIGALRM, BackToTop);


  MakePrompt(prompt, sizeof(prompt));

  if (gConn.connected == 0) {
   SetXtermTitle("DEFAULT");
  } else {
   SetXtermTitle("%s - NcFTP", gConn.host);
  }

  lineRead = Readline(prompt);
  if (lineRead == ((void*)0)) {

   (void) printf("\n");
   break;
  }
  Trace(0, "> %s\n", lineRead);
  AddHistory(lineRead);
  for (tUsed = 0;;) {
   (void) memset(&ai, 0, sizeof(ai));
   bUsed = MakeArgv(lineRead + tUsed, &ai.cargc, ai.cargv,
    (int) (sizeof(ai.cargv) / sizeof(char *)),
    ai.argbuf, sizeof(ai.argbuf),
    ai.noglobargv, 0);
   if (bUsed <= 0)
    break;
   tUsed += bUsed;
   if (ai.cargc == 0)
    continue;
   gRunningCommand = 1;
   (void) time(&cmdStart);
   if (DoCommand(&ai) < 0) {
    (void) time(&cmdStop);
    gRunningCommand = 0;
    break;
   }
   (void) time(&cmdStop);
   gRunningCommand = 0;
   if ((cmdStop - cmdStart) > kBeepAfterCmdTime) {






    (void) fprintf(stderr, "\007");

   }
   ++gEventNumber;
  }

  free(lineRead);
 }

 CloseHost();
 gMayBackToTopJmp = 0;
}
