
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int SIGPIPE ;
 int SetXtermTitle (char*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int gBackToTopJmp ;
 int gDoneApplication ;
 int gGotSig ;
 scalar_t__ gMayBackToTopJmp ;
 int gRunningCommand ;
 int longjmp (int ,int) ;
 int siglongjmp (int ,int) ;
 int stderr ;

void
BackToTop(int sigNum)
{
 gGotSig = sigNum;
 if (sigNum == SIGPIPE) {
  if (gRunningCommand == 1) {
   (void) fprintf(stderr, "Unexpected broken pipe.\n");
   gRunningCommand = 0;
  } else {
   SetXtermTitle("RESTORE");
   exit(1);
  }
 } else if (sigNum == SIGINT) {
  if (gRunningCommand == 0)
   gDoneApplication = 1;
 }
 if (gMayBackToTopJmp > 0) {



  longjmp(gBackToTopJmp, 1);

 }
}
