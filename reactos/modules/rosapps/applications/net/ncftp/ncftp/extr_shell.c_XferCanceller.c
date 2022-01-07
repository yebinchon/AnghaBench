
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cancelXfer; } ;


 int SIGINT ;
 int SIG_DFL ;
 int gBackToTopJmp ;
 int gCancelCtrl ;
 TYPE_1__ gConn ;
 int gGotSig ;
 scalar_t__ gMayBackToTopJmp ;
 int longjmp (int ,int) ;
 int siglongjmp (int ,int) ;
 int signal (int ,int ) ;

void
XferCanceller(int sigNum)
{
 gGotSig = sigNum;
 if (gConn.cancelXfer > 0) {
  gCancelCtrl = 1;
  if (gMayBackToTopJmp > 0) {



   longjmp(gBackToTopJmp, 1);

  }

 }
 gConn.cancelXfer++;
}
