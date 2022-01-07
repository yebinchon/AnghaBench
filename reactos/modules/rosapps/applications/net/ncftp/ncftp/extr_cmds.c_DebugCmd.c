
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CommandPtr ;
typedef int ArgvInfoPtr ;


 int ARGSUSED (int ) ;
 int SetDebug (int) ;
 int atoi (char const*) ;
 int gDebug ;
 int gUnusedArg ;

void
DebugCmd(const int argc, const char **const argv, const CommandPtr cmdp, const ArgvInfoPtr aip)
{
 ARGSUSED(gUnusedArg);
 if (argc > 1)
  SetDebug(atoi(argv[1]));
 else
  SetDebug(!gDebug);
}
