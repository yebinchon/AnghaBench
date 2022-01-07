
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int printMode; int code; int msg; } ;
typedef TYPE_1__* ResponsePtr ;
typedef int * FTPCIPtr ;


 int PrintResp (int *) ;
 int gUnusedArg ;
 int kResponseNoPrint ;

__attribute__((used)) static void
NcFTPOpenPrintResponseProc(const FTPCIPtr cipUNUSED, ResponsePtr rp)
{
 gUnusedArg = (cipUNUSED != ((void*)0));
 if ((rp->printMode & kResponseNoPrint) != 0)
  return;





 if (rp->code < 400)
  return;

 PrintResp(&rp->msg);
}
