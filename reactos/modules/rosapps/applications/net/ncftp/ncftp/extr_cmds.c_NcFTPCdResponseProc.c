
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* first; } ;
struct TYPE_6__ {char* line; struct TYPE_6__* next; } ;
struct TYPE_5__ {int printMode; int codeType; TYPE_3__ msg; } ;
typedef TYPE_1__* ResponsePtr ;
typedef TYPE_2__* LinePtr ;
typedef TYPE_3__* LineListPtr ;
typedef int * FTPCIPtr ;


 scalar_t__ ISTRNCMP (char*,char*,int) ;
 int gUnusedArg ;
 int kResponseNoPrint ;
 int printf (char*,char*) ;

__attribute__((used)) static void
NcFTPCdResponseProc(const FTPCIPtr cipUNUSED, ResponsePtr rp)
{
 LinePtr lp;
 LineListPtr llp;

 gUnusedArg = (cipUNUSED != ((void*)0));
 if ((rp->printMode & kResponseNoPrint) != 0)
  return;
 llp = &rp->msg;
 for (lp = llp->first; lp != ((void*)0); lp = lp->next) {
  if ((lp == llp->first) && (rp->codeType == 2)) {
   if (ISTRNCMP(lp->line, "CWD command", 11) == 0)
    continue;
   if (lp->line[0] == '"')
    continue;
  }
  (void) printf("%s\n", lp->line);
 }
}
