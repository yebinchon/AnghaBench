
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CommandPtr ;
typedef int ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int FTPPerror (int *,int,int ,char*,char const*) ;
 int FTPUmask (int *,char const*) ;
 int gConn ;
 int gUnusedArg ;
 int kErrUmaskFailed ;

void
UmaskCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 int result;

 ARGSUSED(gUnusedArg);
 result = FTPUmask(&gConn, argv[1]);
 if (result < 0)
  FTPPerror(&gConn, result, kErrUmaskFailed, "umask", argv[1]);
}
