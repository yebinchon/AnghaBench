
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CommandPtr ;
typedef int ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int FTPMkdir (int *,char const*,int) ;
 int FTPPerror (int *,int,int ,char*,char const*) ;
 int FlushLsCache () ;
 int Getopt (int const,char const** const,char*) ;
 int GetoptReset () ;
 int PrintCmdUsage (int const) ;
 int gConn ;
 int gOptInd ;
 int gUnusedArg ;
 int kErrMKDFailed ;
 int kRecursiveNo ;
 int kRecursiveYes ;

void
MkdirCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 int i;
 int opt;
 int result;
 int recurseFlag = kRecursiveNo;

 ARGSUSED(gUnusedArg);
 GetoptReset();
 while ((opt = Getopt(argc, argv, "p")) >= 0) {
  if (opt == 'p') {







   recurseFlag = kRecursiveYes;
  } else {
   PrintCmdUsage(cmdp);
   return;
  }
 }

 for (i=gOptInd; i<argc; i++) {
  result = FTPMkdir(&gConn, argv[i], recurseFlag);
  if (result < 0)
   FTPPerror(&gConn, result, kErrMKDFailed, "Could not mkdir", argv[i]);
 }


 FlushLsCache();
}
