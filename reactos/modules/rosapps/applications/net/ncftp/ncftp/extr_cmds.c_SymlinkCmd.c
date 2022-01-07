
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CommandPtr ;
typedef int ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int FTPPerror (int *,int,int ,char*,char const*) ;
 int FTPSymlink (int *,char const*,char const*) ;
 int FlushLsCache () ;
 int gConn ;
 int gUnusedArg ;
 int kErrSYMLINKFailed ;

void
SymlinkCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 int result;

 ARGSUSED(gUnusedArg);
 result = FTPSymlink(&gConn, argv[1], argv[2]);
 if (result < 0)
  FTPPerror(&gConn, result, kErrSYMLINKFailed, "symlink", argv[1]);


 FlushLsCache();
}
