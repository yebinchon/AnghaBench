
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* first; } ;
struct TYPE_4__ {char* line; struct TYPE_4__* next; } ;
typedef TYPE_1__* LinePtr ;
typedef TYPE_2__ LineList ;
typedef int CommandPtr ;
typedef int ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int FTPListToMemory2 (int *,char const*,TYPE_2__*,char*,int,int*) ;
 int FTPPerror (int *,int,int ,char*,char const*) ;
 int Getopt (int const,char const** const,char*) ;
 int GetoptReset () ;
 int PrintCmdUsage (int const) ;
 int Trace (int ,char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int gConn ;
 int gOptInd ;
 int gUnusedArg ;
 int stdout ;

void
MlsCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 int i;
 int opt;
 LinePtr linePtr, nextLinePtr;
 int result;
 LineList dirContents;
 int mlsd = 1, x;
 const char *item;

 ARGSUSED(gUnusedArg);
 GetoptReset();
 while ((opt = Getopt(argc, argv, "dt")) >= 0) {
  if ((opt == 'd') || (opt == 't')) {



   mlsd = 0;
  } else {
   PrintCmdUsage(cmdp);
   return;
  }
 }

 i = gOptInd;
 if (i == argc) {

  x = 1;
  item = "";
  if ((result = FTPListToMemory2(&gConn, item, &dirContents, (mlsd == 0) ? "-d" : "", 1, &x)) < 0) {
   if (mlsd != 0) {
    FTPPerror(&gConn, result, 0, "Could not MLSD", item);
   } else {
    FTPPerror(&gConn, result, 0, "Could not MLST", item);
   }
  } else {
   for (linePtr = dirContents.first;
    linePtr != ((void*)0);
    linePtr = nextLinePtr)
   {
    nextLinePtr = linePtr->next;
    (void) fprintf(stdout, "%s\n", linePtr->line);
    Trace(0, "%s\n", linePtr->line);
   }
  }
 }

 for ( ; i<argc; i++) {
  x = 1;
  item = argv[i];
  if ((result = FTPListToMemory2(&gConn, item, &dirContents, (mlsd == 0) ? "-d" : "", 1, &x)) < 0) {
   if (mlsd != 0) {
    FTPPerror(&gConn, result, 0, "Could not MLSD", item);
   } else {
    FTPPerror(&gConn, result, 0, "Could not MLST", item);
   }
  } else {
   for (linePtr = dirContents.first;
    linePtr != ((void*)0);
    linePtr = nextLinePtr)
   {
    nextLinePtr = linePtr->next;
    (void) fprintf(stdout, "%s\n", linePtr->line);
    Trace(0, "%s\n", linePtr->line);
   }
  }
 }
}
