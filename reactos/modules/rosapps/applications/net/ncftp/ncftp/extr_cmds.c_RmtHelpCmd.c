
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* first; } ;
struct TYPE_5__ {char* line; struct TYPE_5__* next; } ;
typedef TYPE_1__* LinePtr ;
typedef TYPE_2__ LineList ;
typedef int CommandPtr ;
typedef int ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int DisposeLineListContents (TYPE_2__*) ;
 int FTPPerror (int *,int,int ,char*,char const*) ;
 int FTPRemoteHelp (int *,char const*,TYPE_2__*) ;
 int gConn ;
 int gUnusedArg ;
 int kErrHELPFailed ;
 int printf (char*,char*) ;

void
RmtHelpCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 int i, result;
 LineList ll;
 LinePtr lp;

 ARGSUSED(gUnusedArg);
 if (argc == 1) {
  result = FTPRemoteHelp(&gConn, ((void*)0), &ll);
  if (result < 0)
   FTPPerror(&gConn, result, kErrHELPFailed, "HELP failed", ((void*)0));
  else {
   for (lp = ll.first; lp != ((void*)0); lp = lp->next)
    (void) printf("%s\n", lp->line);
  }
  DisposeLineListContents(&ll);
 } else {
  for (i=1; i<argc; i++) {
   result = FTPRemoteHelp(&gConn, argv[i], &ll);
   if (result < 0)
    FTPPerror(&gConn, result, kErrHELPFailed, "HELP failed for", argv[i]);
   else {
    for (lp = ll.first; lp != ((void*)0); lp = lp->next)
     (void) printf("%s\n", lp->line);
   }
   DisposeLineListContents(&ll);
  }
 }
}
