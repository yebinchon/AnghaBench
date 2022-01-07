
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CommandPtr ;
typedef int ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int Sys (int const,char const** const,int const,char*,int) ;
 int gUnusedArg ;
 int perror (char*) ;
 scalar_t__ rename (char const*,char const*) ;

void
LocalRenameCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{





 ARGSUSED(gUnusedArg);
 Sys(argc, argv, aip, "/bin/mv", 1);

}
