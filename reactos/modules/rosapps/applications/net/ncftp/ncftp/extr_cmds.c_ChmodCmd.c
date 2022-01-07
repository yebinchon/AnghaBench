
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* noglobargv; } ;
typedef int CommandPtr ;
typedef TYPE_1__* ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int FTPChmod (int *,char const*,char const*,int ) ;
 int FTPPerror (int *,int,int ,char*,char const*) ;
 int FlushLsCache () ;
 int gConn ;
 int gUnusedArg ;
 int kErrChmodFailed ;
 int kGlobNo ;
 int kGlobYes ;

void
ChmodCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 int i, result;

 ARGSUSED(gUnusedArg);
 for (i=2; i<argc; i++) {
  result = FTPChmod(
    &gConn, argv[i], argv[1],
    (aip->noglobargv[i] != 0) ? kGlobNo: kGlobYes
   );
  if (result < 0) {
   FTPPerror(&gConn, result, kErrChmodFailed, "chmod", argv[i]);

  }
 }


 FlushLsCache();
}
