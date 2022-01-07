
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* noglobargv; } ;
typedef int CommandPtr ;
typedef TYPE_1__* ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int FTPDelete (int *,char const*,int,int ) ;
 int FTPPerror (int *,int,int ,char*,char const*) ;
 int FlushLsCache () ;
 int Getopt (int const,char const** const,char*) ;
 int GetoptReset () ;
 int PrintCmdUsage (int const) ;
 int gConn ;
 int gOptInd ;
 int gUnusedArg ;
 int kErrDELEFailed ;
 int kGlobNo ;
 int kGlobYes ;
 int kRecursiveNo ;
 int kRecursiveYes ;

void
DeleteCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 int result;
 int i, c;
 int recursive = kRecursiveNo;

 ARGSUSED(gUnusedArg);
 GetoptReset();
 while ((c = Getopt(argc, argv, "rf")) > 0) switch(c) {
  case 'r':
   recursive = kRecursiveYes;
   break;
  case 'f':

   break;
  default:
   PrintCmdUsage(cmdp);
   return;
 }

 for (i=gOptInd; i<argc; i++) {
  result = FTPDelete(
    &gConn, argv[i], recursive,
    (aip->noglobargv[i] != 0) ? kGlobNo: kGlobYes
   );
  if (result < 0) {
   FTPPerror(&gConn, result, kErrDELEFailed, "delete", argv[i]);

  }
 }


 FlushLsCache();
}
