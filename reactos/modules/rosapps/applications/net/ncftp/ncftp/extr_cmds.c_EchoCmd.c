
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__* noglobargv; } ;
struct TYPE_9__ {TYPE_1__* first; } ;
struct TYPE_8__ {char* line; struct TYPE_8__* next; } ;
typedef TYPE_1__* LinePtr ;
typedef TYPE_2__ LineList ;
typedef int CommandPtr ;
typedef TYPE_3__* ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int DisposeLineListContents (TYPE_2__*) ;
 int FTPLocalGlob (int *,TYPE_2__*,char const*,int ) ;
 int FTPPerror (int *,int,int ,char*,char const*) ;
 int InitLineList (TYPE_2__*) ;
 int gConn ;
 int gUnusedArg ;
 int kErrGlobFailed ;
 int kGlobNo ;
 int kGlobYes ;
 int printf (char*,...) ;

void
EchoCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 int i;
 int result;
 int np = 0;
 LineList ll;
 LinePtr lp;

 ARGSUSED(gUnusedArg);
 for (i=1; i<argc; i++) {
  InitLineList(&ll);
  result = FTPLocalGlob(&gConn, &ll, argv[i], (aip->noglobargv[i] != 0) ? kGlobNo: kGlobYes);
  if (result < 0) {
   FTPPerror(&gConn, result, kErrGlobFailed, "local glob", argv[i]);
  } else {
   for (lp = ll.first; lp != ((void*)0); lp = lp->next) {
    if (lp->line != ((void*)0)) {
     if (np > 0)
      (void) printf(" ");
     (void) printf("%s", lp->line);
     np++;
    }
   }
  }
  DisposeLineListContents(&ll);
 }
 (void) printf("\n");
}
