
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CommandPtr ;
typedef int ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int FTPGetOneFile2 (int *,char const*,int *,int ,int ,int ,int ) ;
 int FTPPerror (int *,int,int ,char*,char const*) ;
 int STDOUT_FILENO ;
 int gConn ;
 int gUnusedArg ;
 int kAppendNo ;
 int kErrCouldNotStartDataTransfer ;
 int kResumeNo ;
 int kTypeAscii ;

void
CatCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 int result;
 int i;

 ARGSUSED(gUnusedArg);
 for (i=1; i<argc; i++) {
  result = FTPGetOneFile2(&gConn, argv[i], ((void*)0), kTypeAscii, STDOUT_FILENO, kResumeNo, kAppendNo);
  FTPPerror(&gConn, result, kErrCouldNotStartDataTransfer, "cat", argv[i]);
 }
}
